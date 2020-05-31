
import 'package:scorecontacts/domain/features/user/contacts_data/properties/names/phonetic_names.dart';

class NameData {
  String firstName;
  String nickname;
  String namePrefix;
  String middleName;
  String firstSurname;
  String secondSurname;
  String nameSuffix;
  PhoneticNames phoneticNames;

  NameData({this.phoneticNames, this.firstName, this.nickname, this.namePrefix, this.middleName,
      this.firstSurname, this.secondSurname, this.nameSuffix});


  @override
  String toString() {
    return 'NameData{firstName: $firstName, nickname: $nickname, namePrefix: $namePrefix, middleName: $middleName, firstSurname: $firstSurname, secondSurname: $secondSurname, nameSuffix: $nameSuffix, phoneticNames: $phoneticNames}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameData &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          nickname == other.nickname &&
          namePrefix == other.namePrefix &&
          middleName == other.middleName &&
          firstSurname == other.firstSurname &&
          secondSurname == other.secondSurname &&
          nameSuffix == other.nameSuffix &&
          phoneticNames == other.phoneticNames;

  @override
  int get hashCode =>
      firstName.hashCode ^
      nickname.hashCode ^
      namePrefix.hashCode ^
      middleName.hashCode ^
      firstSurname.hashCode ^
      secondSurname.hashCode ^
      nameSuffix.hashCode ^
      phoneticNames.hashCode;
}