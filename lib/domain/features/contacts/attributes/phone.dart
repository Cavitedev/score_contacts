class Phone{
  String number;
  String phoneLabel;

  Phone({this.number, this.phoneLabel});


  @override
  String toString() {
    return 'Phone{number: $number, phoneLabel: $phoneLabel}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Phone &&
          runtimeType == other.runtimeType &&
          number == other.number &&
          phoneLabel == other.phoneLabel;

  @override
  int get hashCode => number.hashCode ^ phoneLabel.hashCode;
}
