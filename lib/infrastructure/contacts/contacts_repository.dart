import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';
import 'package:scorecontacts/infrastructure/contacts/contact_dtos.dart';
import 'package:scorecontacts/infrastructure/contacts/contacts_image_storage.dart';
import 'package:scorecontacts/infrastructure/core/firebase_user_helper.dart';
import 'package:scorecontacts/infrastructure/firebase_core/codes.dart';

@LazySingleton(as: IContactsRepository)
class ContactsRepository implements IContactsRepository {
  final FirebaseFirestore firestore;
  final ContactsImageStorage imageStorage;

  ContactsRepository(this.firestore, this.imageStorage);

  //CRUD
  @override
  Future<Either<ContactsFailure, Unit>> createContact(Contact contact) async {
    try {
      return (await _createContact(contact)).fold(
        (f) => left(f),
        (r) => right(unit),
      );
    } catch (e) {
      return left(_handleException(e));
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> createContactList(
      List<Contact> contactList) async {
    return _performBatch<Either<ContactsFailure, Unit>, List<Contact>>(
        contactList, _createContactsBatch);
  }

  Future<Either<ContactsFailure, void>> _createContact(Contact contact) async {
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
    return (await imageStorage.updateImageOnDTO(contact, contactDTO)).fold(
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
      (await imageStorage.updateImageOnDTO(contact, contactDTO)).fold(
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
        .snapshots()
        .map((snapshot) => right<ContactsFailure, List<Contact>>(snapshot.docs
            .map((doc) => ContactDTO.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e) {
      return left(_handleException(e));
    });
  }

  @override
  Future<Either<ContactsFailure, Unit>> updateContact(Contact contact) async {
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    final ContactDTO contactDTO = ContactDTO.fromDomain(contact);

    final Either<ContactsFailure, ContactDTO> eitherUpdatedDto =
        await imageStorage.updateImageOnDTO(contact, contactDTO);

    return eitherUpdatedDto.fold(
      (f) => left(f),
      (contactDTORet) async {
        try {
          await contacts.doc(contactDTORet.id).update(contactDTORet.toJson());
          return right(unit);
        } catch (e) {
          return left(_handleException(e));
        }
      },
    );
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContact(Contact contact) async {
    try {
      try {
        await imageStorage.deleteImage(contact);
      } catch (e) {
        return left(const ContactsFailure.unexpected());
      }
      final CollectionReference contacts =
          firestore.userDocument().contactsCollection;
      await contacts.doc(contact.id.value).delete();
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContactList(
      List<Contact> contactList) {
    return _performBatch(contactList, _deleteContactsBatch);
  }

  Future<Either<ContactsFailure, Unit>> _deleteContactsBatch(
      List<Contact> contactList) async {
    final batch = firestore.batch();
    final CollectionReference contacts =
        firestore.userDocument().contactsCollection;
    for (final Contact contact in contactList) {
      try {
        await imageStorage.deleteImage(contact);
      } catch (e) {
        return left(_handleException(e));
      }
      batch.delete(contacts.doc(contact.id.value));
    }
    try {
      await batch.commit();
      return right(unit);
    } catch (e) {
      return left(_handleException(e));
    }
  }

  Future<R> _performBatch<R extends Either, P extends List>(
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
}

ContactsFailure _handleException(Object e) {
  if (e is PlatformException &&
      (e.message!.contains(PERMISSIONDENIEDCODE) || e.code == UNATHORIZED)) {
    return const ContactsFailure.insufficientPermissions();
  } else if (e is PlatformException && e.message!.contains(NOTFOUNDCODE)) {
    return const ContactsFailure.notFound();
  } else {
    return const ContactsFailure.unexpected();
  }
}
