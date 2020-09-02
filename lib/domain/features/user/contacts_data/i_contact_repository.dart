import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/contacts_failure.dart';

abstract class IContactRepository {
  Stream<Either<ContactsFailure, Unit>> watchAllContacts();

  Future<Either<ContactsFailure, Unit>> updateContact();

  Future<Either<ContactsFailure, Unit>> deleteContact();
}
