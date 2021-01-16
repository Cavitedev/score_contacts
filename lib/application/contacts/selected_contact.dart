import 'package:flutter/foundation.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class SelectionContact {
  final Contact contact;
  bool isSelected;
  bool display;

  SelectionContact(
      {@required this.contact, this.isSelected = false, this.display = true});

  void toggleSelection() {
    isSelected = !isSelected;
  }
}


extension SelectedContactsListExtension on List<SelectionContact>{
  List<Contact> toContacts() =>
      map((selectionContact) => selectionContact.contact).toList();
  List<SelectionContact> displayedContacts() => where((
      selectionContact) => selectionContact.display).toList();
}

extension ContactsListExtension on List<Contact>{
  List<SelectionContact> toSelectionContacts() =>
      map((contact) => SelectionContact(contact: contact)).toList();
}
