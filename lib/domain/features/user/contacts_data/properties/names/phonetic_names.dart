class PhoneticNames{
  final String phoneticFirstName;
  final String phoneticMiddleName;
  final String phoneticFirstSurname;
  final String phoneticSecondSurname;

  PhoneticNames({this.phoneticFirstName, this.phoneticMiddleName,
      this.phoneticFirstSurname, this.phoneticSecondSurname});


  @override
  String toString() {
    return 'PhoneticNames{phoneticFirstName: $phoneticFirstName, phoneticMiddleName: $phoneticMiddleName, phoneticFirstSurname: $phoneticFirstSurname, phoneticSecondSurname: $phoneticSecondSurname}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneticNames &&
          runtimeType == other.runtimeType &&
          phoneticFirstName == other.phoneticFirstName &&
          phoneticMiddleName == other.phoneticMiddleName &&
          phoneticFirstSurname == other.phoneticFirstSurname &&
          phoneticSecondSurname == other.phoneticSecondSurname;

  @override
  int get hashCode =>
      phoneticFirstName.hashCode ^
      phoneticMiddleName.hashCode ^
      phoneticFirstSurname.hashCode ^
      phoneticSecondSurname.hashCode;
}