import 'package:scorecontacts/domain/core/validators/email/email_validator.dart';
import 'package:scorecontacts/domain/core/validators/i_hint.dart';
import 'package:scorecontacts/domain/core/validators/i_hint_validator.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';

class Email implements ILabelObject, IHintValidator<String> {
  @override
  final String label;
  @override
  final String value;
  @override
  final List<String> otherLabels;

  const Email({
    this.value,
    this.otherLabels = const <String>["Home", "Work", "Other"],
    this.label = "Home",
  });

  factory Email.fromLabelObject(ILabelObject labelObject) {
    return Email(
      value: labelObject.value,
      label: labelObject.label,
    );
  }

  @override
  IHint hintValidate(String value) {
    return emailValidate(value);
  }

  @override
  Email copyWith({
    String label,
    String value,
    List<String> otherLabels,
  }) {
    if ((label == null || identical(label, this.label)) &&
        (value == null || identical(value, this.value)) &&
        (otherLabels == null || identical(otherLabels, this.otherLabels))) {
      return this;
    }

    return Email(
      label: label ?? this.label,
      value: value ?? this.value,
      otherLabels: otherLabels ?? this.otherLabels,
    );
  }

  @override
  String toString() {
    return 'Email{email: $value, emailLabel: $label}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Email &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          value == other.value;

  @override
  int get hashCode => label.hashCode ^ value.hashCode;


}
