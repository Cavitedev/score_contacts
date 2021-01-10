import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/i_contact_repository.dart';
import 'package:scorecontacts/infrastructure/contacts/contact_dtos.dart';
import 'package:scorecontacts/infrastructure/core/firebase_user_helper.dart';
import 'package:scorecontacts/infrastructure/firebase_core/codes.dart';

@LazySingleton(as: IContactsRepository)
class ContactsRepository implements IContactsRepository {
  final FirebaseFirestore firestore;

  ContactsRepository(this.firestore);

  //CRUD
  @override
  Future<Either<ContactsFailure, Unit>> createContact(Contact contact) async {
    try {
      _createContact(contact);
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> createContactList(
      List<Contact> contactList) async {

    while(contactList.length >= 500){

      final either = await _performBatch(contactList.sublist(0,500));
      contactList.removeRange(0, 500);
      if(either.isLeft()){
        return either;
      }

    }

    return _performBatch(contactList);

  }

  Future<Either<ContactsFailure, Unit>> _performBatch(
      List<Contact> contactList) async {

    final batch = firestore.batch();
    final CollectionReference contacts =
        firestore
            .userDocument()
            .contactsCollection;
    for (final Contact contact in contactList) {
      final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      batch.set(contacts.doc(contactDTO.id), contactDTO.toJson());
    }
    await batch.commit().
    catchError((e){
      if (e is PlatformException && e.message.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    });
    return right(unit);
  }

  Future<void> _createContact(Contact contact) async {
    final CollectionReference contacts =
        firestore
            .userDocument()
            .contactsCollection;
    final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
    await contacts.doc(contactDTO.id).set(contactDTO.toJson());
  }


  @override
  Stream<Either<ContactsFailure, List<Contact>>> watchAllContacts() async* {
    final CollectionReference contacts =
        firestore
            .userDocument()
            .contactsCollection;
    yield* contacts
        .snapshots()
        .map((snapshot) =>
        right<ContactsFailure, List<Contact>>(snapshot.docs
            .map(
                (doc) => ContactDTO.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains(PERMISSIONDENIEDCODE)) {
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
          firestore
              .userDocument()
              .contactsCollection;
      final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      await contacts.doc(contactDTO.id).update(contactDTO.toJson());
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else if (e is PlatformException && e.message.contains(NOTFOUNDCODE)) {
        return left(const ContactsFailure.notFound());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ContactsFailure, Unit>> deleteContact(Contact contact) async {
    try {
      final CollectionReference contacts =
          firestore
              .userDocument()
              .contactsCollection;
      final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
      await contacts.doc(contactDTO.id).delete();
      return right(unit);
    } catch (e) {
      if (e is PlatformException && e.message.contains(PERMISSIONDENIEDCODE)) {
        return left(const ContactsFailure.insufficientPermissions());
      } else if (e is PlatformException && e.message.contains(NOTFOUNDCODE)) {
        return left(const ContactsFailure.notFound());
      } else {
        return left(const ContactsFailure.unexpected());
      }
    }
  }


}
