import 'package:flutter/foundation.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/contact.dart';

class User {
  final String uid;
  List<Contact> contacts;

  User({
    @required this.uid,
    contacts,
  }) : assert(uid != null);

  @override
  String toString() {
    return 'User{uid: $uid, contacts: $contacts}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User && runtimeType == other.runtimeType && uid == other.uid;

  @override
  int get hashCode => uid.hashCode;
}
