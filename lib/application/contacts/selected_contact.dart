import 'package:flutter/foundation.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class SelectionContact {
  final Contact contact;
  bool isSelected;
  bool display;
  String filterText;

  SelectionContact(
      {@required this.contact, this.isSelected = false, this.display = true});

  void toggleSelection() {
    isSelected = !isSelected;
  }
}

extension SelectedContactsListExtension on List<SelectionContact> {
  List<Contact> toContacts() =>
      map((selectionContact) => selectionContact.contact).toList();

  List<SelectionContact> displayedContacts() =>
      where((selectionContact) => selectionContact.display).toList();

  bool hasSelectedContacts() =>
      any((selectionContact) => selectionContact.isSelected);

  int selectedContactsAmount () => fold<int>(0, (value, contact) => value + ((contact.isSelected) ? 1 : 0));

  List<SelectionContact> selectedContacts() =>  where((selectionContact) => selectionContact.isSelected).toList();

  void deselectAll () => _selectAll(false);
  void selectAll () => _selectAll(true);
  void _selectAll (bool selectOn) => forEach((contact) => contact.isSelected = selectOn);
}

extension ContactsListExtension on List<Contact> {
  List<SelectionContact> toSelectionContacts() =>
      map((contact) => SelectionContact(contact: contact)).toList();
}
