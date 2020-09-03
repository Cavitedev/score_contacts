import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

abstract class IContactDao {
  Future<void> addContact(Contact contact);

  Future<void> updateContact(Contact contact);
}
