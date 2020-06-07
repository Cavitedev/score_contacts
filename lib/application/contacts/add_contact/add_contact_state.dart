import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/phone.dart';

class AddContactState {
  final List<Email> emails;
  final List<Phone> phones;

  const AddContactState({
    this.emails = const [Email()],
    this.phones = const [Phone()],
  });

  AddContactState copyWith({
    List<Email> emails,
    List<Phone> phones,
  }) {
    if ((emails == null || identical(emails, this.emails)) &&
        (phones == null || identical(phones, this.phones))) {
      return this;
    }

    return AddContactState(
      emails: emails ?? this.emails,
      phones: phones ?? this.phones,
    );
  }
}
