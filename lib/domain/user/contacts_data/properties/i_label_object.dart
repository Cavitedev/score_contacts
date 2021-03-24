///Implement fromLabelObject on children
abstract class ILabelObject {
  final String? value;
  final String? label;
  final List<String>? otherLabels;

  ILabelObject({
    required this.value,
    required this.label,
    required this.otherLabels,
  });

  ILabelObject copyWith({
    String value,
    String label,
  });
}

///For DTOS transition
class LabelObject implements ILabelObject {
  final String? value;
  final String? label;
  final List<String>? otherLabels;

  LabelObject({this.value, this.label, this.otherLabels});

  LabelObject copyWith({
    String? value,
    String? label,
  }) {
    if ((value == null || identical(value, this.value)) && (label == null || identical(label, this.label))) {
      return this;
    }

    return LabelObject(
      value: value ?? this.value,
      label: label ?? this.label,
    );
  }
}
