import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/phonetic_names.dart';

part 'name_data.freezed.dart';

@freezed
abstract class NameData implements _$NameData {
  const NameData._();

  const factory NameData({
    PhoneticNames phoneticNames,
    String firstName,
    String nickname,
    String namePrefix,
    String middleName,
    String surnames,
    String nameSuffix,
  }) = _NameData;
}

// class NameData {
//   final String firstName;
//   final String nickname;
//   final String namePrefix;
//   final String middleName;
//   final String firstSurname;
//   final String secondSurname;
//   final String nameSuffix;
//   final PhoneticNames phoneticNames;
//
//   const NameData({this.phoneticNames, this.firstName, this.nickname, this.namePrefix, this.middleName,
//       this.firstSurname, this.secondSurname, this.nameSuffix});
//
//
//   @override
//   String toString() {
//     return 'NameData{firstName: $firstName, nickname: $nickname, namePrefix: $namePrefix, middleName: $middleName, firstSurname: $firstSurname, secondSurname: $secondSurname, nameSuffix: $nameSuffix, phoneticNames: $phoneticNames}';
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is NameData &&
//           runtimeType == other.runtimeType &&
//           firstName == other.firstName &&
//           nickname == other.nickname &&
//           namePrefix == other.namePrefix &&
//           middleName == other.middleName &&
//           firstSurname == other.firstSurname &&
//           secondSurname == other.secondSurname &&
//           nameSuffix == other.nameSuffix &&
//           phoneticNames == other.phoneticNames;
//
//   @override
//   int get hashCode =>
//       firstName.hashCode ^
//       nickname.hashCode ^
//       namePrefix.hashCode ^
//       middleName.hashCode ^
//       firstSurname.hashCode ^
//       secondSurname.hashCode ^
//       nameSuffix.hashCode ^
//       phoneticNames.hashCode;
//
//   NameData copyWith({
//     final String firstName,
//     final String nickname,
//     final String namePrefix,
//     final String middleName,
//     final String firstSurname,
//     final String secondSurname,
//     final String nameSuffix,
//     final PhoneticNames phoneticNames,
//   }) {
//     if ((firstName == null || identical(firstName, this.firstName)) &&
//         (nickname == null || identical(nickname, this.nickname)) &&
//         (namePrefix == null || identical(namePrefix, this.namePrefix)) &&
//         (middleName == null || identical(middleName, this.middleName)) &&
//         (firstSurname == null || identical(firstSurname, this.firstSurname)) &&
//         (secondSurname == null ||
//             identical(secondSurname, this.secondSurname)) &&
//         (nameSuffix == null || identical(nameSuffix, this.nameSuffix)) &&
//         (phoneticNames == null ||
//             identical(phoneticNames, this.phoneticNames))) {
//       return this;
//     }
//
//     return const NameData(
//       firstName: firstName ?? this.firstName,
//       nickname: nickname ?? this.nickname,
//       namePrefix: namePrefix ?? this.namePrefix,
//       middleName: middleName ?? this.middleName,
//       firstSurname: firstSurname ?? this.firstSurname,
//       secondSurname: secondSurname ?? this.secondSurname,
//       nameSuffix: nameSuffix ?? this.nameSuffix,
//       phoneticNames: phoneticNames ?? this.phoneticNames,
//     );
//   }
// }
