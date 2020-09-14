import 'package:flutter/foundation.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class SelectedContact {
  final Contact contact;
  bool isSelected;

  SelectedContact({@required this.contact, this.isSelected = false});

  void toggleSelection() {
    isSelected = !isSelected;
  }
}
