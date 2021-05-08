import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
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
      return (await _createContact(contact)).fold(
        (f) => left(f),
        (r) => right(unit),
      );
    } catch (e) {
      if (e is PlatformException &&
          (e.message!.contains(PERMISSIONDENIEDCODE) ||
              e.code == UNATHORIZED)) {
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

  Future<Either<ContactsFailure, void>> _createContact(Contact contact) async {
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    ContactDTO contactDTO = ContactDTO.fromDomain(contact);
    return (await _updateImageOnDTO(contact, contactDTO)).fold(
      (f) => left(f),
      (contactDtoRet) =>
          right(contacts.doc(contactDtoRet.id).set(contactDtoRet.toJson())),
    );
  }

  Future<Either<ContactsFailure, Unit>> _createContactsBatch(
      List<Contact> contactList) async {
    final batch = firestore.batch();
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    ContactsFailure? failure;
    for (final Contact contact in contactList) {
      ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      (await _updateImageOnDTO(contact, contactDTO)).fold(
        (l) => failure = l,
        (contactDtoRet) => contactDTO = contactDtoRet,
      );
      if (failure != null) {
        return left(failure!);
      }

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
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    final ContactDTO contactDTO = ContactDTO.fromDomain(contact);

    Either<ContactsFailure, ContactDTO> eitherUpdatedDto =
        await _updateImageOnDTO(contact, contactDTO);

    return eitherUpdatedDto.fold(
      (f) => left(f),
      (contactDTORet) async {
        try {
          await contacts.doc(contactDTORet.id).update(contactDTORet.toJson());
          return right(unit);
        } catch (e) {
          if (e is PlatformException &&
              e.message!.contains(PERMISSIONDENIEDCODE)) {
            return left(const ContactsFailure.insufficientPermissions());
          } else if (e is PlatformException &&
              e.message!.contains(NOTFOUNDCODE)) {
            return left(const ContactsFailure.notFound());
          } else {
            return left(const ContactsFailure.unexpected());
          }
        }
      },
    );
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContact(Contact contact) async {
    try {
      try {
        await _deleteImage(contact);
      } catch (e) {
        return left(const ContactsFailure.unexpected());
      }
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
      try {
        await _deleteImage(contact);
      } catch (e) {
        return left(const ContactsFailure.unexpected());
      }
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
    final Reference storageRef = firestorage
        .ref("Users/$userId/contacts/${contact.id.value}/avatar.jpg");
    return storageRef;
  }

  Future<Either<ContactsFailure, String?>> _uploadImage(Contact contact) async {
    final PickedFile? imageFile = contact.contactImage?.file;
    if (imageFile == null) {
      return right(null);
    }
    final Reference storageRef = _getFirestorageRef(contact);
    final Uint8List imageBytes = await imageFile.readAsBytes();
    final UploadTask uploadTask = storageRef.putData(imageBytes);
    try {
      await uploadTask.whenComplete(() {});
      final url = await uploadTask.snapshot.ref.getDownloadURL();
      return right(url);
    } catch (e) {
      if (e is FirebaseException && e.code == UNATHORIZED) {
        return left(const ContactsFailure.insufficientPermissions());
      }
      rethrow;
    }
  }

  Future<Either<ContactsFailure, ContactDTO>> _updateImageOnDTO(
      Contact contact, ContactDTO contactDTO) async {
    Either<ContactsFailure, String?> eitherImageUrl =
        await _uploadImage(contact);
    return eitherImageUrl.fold(
      (f) => left(f),
      (imageUrl) {
        if (imageUrl != null) {
          return right(contactDTO.copyWith(imageUrl: imageUrl));
        }

        return right(contactDTO);
      },
    );
  }

  Future<void> _deleteImage(Contact contact) {
    if (contact.contactImage == null) {
      return Future.value(null);
    }
    final Reference storageRef = _getFirestorageRef(contact);

    return storageRef.delete();
  }
}
