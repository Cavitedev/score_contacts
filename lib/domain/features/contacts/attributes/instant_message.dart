
class InstantMessage{
  String instantMessage;
  String label;

  InstantMessage({this.instantMessage, this.label});


  @override
  String toString() {
    return 'InstantMessage{instantMessage: $instantMessage, label: $label}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstantMessage &&
          runtimeType == other.runtimeType &&
          instantMessage == other.instantMessage &&
          label == other.label;

  @override
  int get hashCode => instantMessage.hashCode ^ label.hashCode;
}