import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';

import 'contact.dart';

abstract class IContactRepository {
  //CRUD
  Future<Either<ContactsFailure, Unit>> createContact(Contact contact);

  Stream<Either<ContactsFailure, List<Contact>>> watchAllContacts();

  Future<Either<ContactsFailure, Unit>> updateContact(Contact contact);

  Future<Either<ContactsFailure, Unit>> deleteContact(Contact contact);
}
