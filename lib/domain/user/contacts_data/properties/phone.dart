import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';

class Phone implements ILabelObject {
  @override
  final String value;
  @override
  final String label;
  @override
  final List<String> otherLabels;

  const Phone(
      {this.value,
      this.label = "Mobile",
      this.otherLabels = const ["Mobile", "Work", "Other"]});

  factory Phone.fromLabelObject(ILabelObject labelObject) {
    return Phone(
      value: labelObject.value,
      label: labelObject.label,
    );
  }

  @override
  String toString() {
    return 'Phone{number: $value, phoneLabel: $label}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Phone &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          label == other.label;

  @override
  int get hashCode => value.hashCode ^ label.hashCode;

  @override
  Phone copyWith({
    String value,
    String label,
    List<String> otherLabels,
  }) {
    if ((value == null || identical(value, this.value)) &&
        (label == null || identical(label, this.label)) &&
        (otherLabels == null || identical(otherLabels, this.otherLabels))) {
      return this;
    }

    return Phone(
      value: value ?? this.value,
      label: label ?? this.label,
      otherLabels: otherLabels ?? this.otherLabels,
    );
  }
}
