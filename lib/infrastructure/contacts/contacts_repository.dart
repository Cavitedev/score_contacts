import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';
import 'package:scorecontacts/infrastructure/contacts/contact_dtos.dart';
import 'package:scorecontacts/infrastructure/core/firebase_user_helper.dart';
import 'package:scorecontacts/infrastructure/firebase_core/codes.dart';

@LazySingleton(as: IContactsRepository)
class ContactsRepository implements IContactsRepository {
  final FirebaseFirestore firestore;
  final FirebaseStorage firestorage;
  final IAuthFacade authFacade;

  ContactsRepository(this.firestore, this.firestorage, this.authFacade);

  //CRUD
  @override
  Future<Either<ContactsFailure, Unit>> createContact(Contact contact) async {
    try {
      _createContact(contact);
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> createContactList(
      List<Contact> contactList) async {
    return _performingBatch<Either<ContactsFailure, Unit>, List<Contact>>(
        contactList, _createContactsBatch);
  }

  Future<void> _createContact(Contact contact) async {
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    ContactDTO contactDTO = ContactDTO.fromDomain(contact);
    contactDTO = await _updateImageOnDTO(contact, contactDTO);
    await contacts.doc(contactDTO.id).set(contactDTO.toJson());
  }



  Future<Either<ContactsFailure, Unit>> _createContactsBatch(
      List<Contact> contactList) async {
    final batch = firestore.batch();
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    for (final Contact contact in contactList) {
      ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      contactDTO = await _updateImageOnDTO(contact, contactDTO);
      batch.set(contacts.doc(contactDTO.id), contactDTO.toJson());
    }
    Either<ContactsFailure, Unit>? returnValue;
    await batch.commit().catchError((e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        returnValue = left(const ContactsFailure.insufficientPermissions());
      } else {
        returnValue = left(const ContactsFailure.unexpected());
      }
    });
    return returnValue ?? right(unit);
  }

  @override
  Stream<Either<ContactsFailure, List<Contact>>> watchAllContacts() async* {
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    yield* contacts
        .snapshots(includeMetadataChanges: true)
        .map((snapshot) => right<ContactsFailure, List<Contact>>(snapshot.docs
            .map((doc) => ContactDTO.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ContactsFailure, Unit>> updateContact(Contact contact) async {
    try {
      final CollectionReference contacts =
          firestore.userDocument().contactsCollection;
      ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      contactDTO = await _updateImageOnDTO(contact, contactDTO);

      await contacts.doc(contactDTO.id).update(contactDTO.toJson());
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else if (e is PlatformException && e.message!.contains(NOTFOUNDCODE)) {
        return left(const ContactsFailure.notFound());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContact(Contact contact) async {
    try {
      await _deleteImage(contact);
      final CollectionReference contacts =
          firestore.userDocument().contactsCollection;
      await contacts.doc(contact.id.value).delete();
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else if (e is PlatformException && e.message!.contains(NOTFOUNDCODE)) {
        return left(const ContactsFailure.notFound());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContactList(
      List<Contact> contactList) {
    return _performingBatch(contactList, _deleteContactsBatch);
  }

  Future<Either<ContactsFailure, Unit>> _deleteContactsBatch(
      List<Contact> contactList) async {
    final batch = firestore.batch();
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    for (final Contact contact in contactList) {
      await _deleteImage(contact);
      batch.delete(contacts.doc(contact.id.value));
    }
    Either<ContactsFailure, Unit>? returnValue;
    await batch.commit().catchError((e) {
      if (e is PlatformException && e.message!.contains(PERMISSIONDENIEDCODE)) {
        returnValue = left(const ContactsFailure.insufficientPermissions());
      } else if (e is PlatformException && e.message!.contains(NOTFOUNDCODE)) {
        returnValue = left(const ContactsFailure.notFound());
      } else {
        returnValue = left(const ContactsFailure.unexpected());
      }
    });
    return returnValue ?? right(unit);
  }

  Future<R> _performingBatch<R extends Either, P extends List>(
      P batchList, Future<R> Function(P) batchOperation) async {
    const int range = 200;

    while (batchList.length >= range) {
      final P subList = batchList.sublist(0, range) as P;
      final either = await batchOperation(subList);
      batchList.removeRange(0, range);
      if (either.isLeft()) {
        return batchOperation(batchList);
      }
    }

    return batchOperation(batchList);
  }

  Reference _getFirestorageRef(Contact contact) {
    final String userId = authFacade.getUserOrCrash().uid.value;
    final Reference storageRef =
        firestorage.ref("Users/$userId/contacts/${contact.id.value}/image");
    return storageRef;
  }

  Future<String?> _adaptImage(Contact contact) async {
    final File? imageFile = contact.contactImage?.file;
    if (imageFile == null) {
      return null;
    }
    final Reference storageRef = _getFirestorageRef(contact);
    final UploadTask uploadTask = storageRef.putFile(imageFile);
    return uploadTask.then(
      (snaphot) => snaphot.ref.getDownloadURL(),
    );
  }

    Future<ContactDTO> _updateImageOnDTO(Contact contact, ContactDTO contactDTO) async {
    final String? imageUrl = await _adaptImage(contact);
    if (imageUrl != null) {
      return contactDTO.copyWith(imageUrl: imageUrl);
    }
    return contactDTO;
  }

  Future<void> _deleteImage(Contact contact) {
    final Reference storageRef = _getFirestorageRef(contact);
    return storageRef.delete();
  }
}
