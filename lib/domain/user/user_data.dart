import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class User {
  final UniqueID uid;
  List<Contact>? contacts;

  User({
    required this.uid,
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
