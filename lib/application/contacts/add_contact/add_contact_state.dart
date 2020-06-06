import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';

class AddContactState {
  final List<Email> emails;

  const AddContactState({
    this.emails = const [Email()],
  });

  AddContactState copyWith({
    List<Email> emails,
  }) {
    if (emails == null || identical(emails, this.emails)) {
      return this;
    }

    return AddContactState(
      emails: emails ?? this.emails,
    );
  }
}
