import 'package:scorecontacts/domain/features/contacts/contact.dart';

abstract class IContactDao{
  Future<void> addContact(Contact contact);
  Future<void> updateContact(Contact contact);
}