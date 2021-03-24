import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/phonetic_names.dart';

part 'name_data.freezed.dart';

@freezed
abstract class NameData implements _$NameData {
  const NameData._();

  const factory NameData({
    PhoneticNames? phoneticNames,
    String? firstName,
    String? nickname,
    String? namePrefix,
    String? middleName,
    String? surnames,
    String? nameSuffix,
  }) = _NameData;

  factory NameData.fromFullName(String? fullName) {
    if(fullName == null || fullName.isEmpty) return const NameData();
    final List<String> names = fullName.split(' ');
    final String name = names[0];
    names.removeAt(0);
    String? surnames;
    if (names.isEmpty) {
      surnames = null;
    } else {
      surnames = names.join(" ");
    }
    return NameData(firstName: name, surnames: surnames);
  }

  String toFullName() {
    final String surnameWithSpace = (surnames == null) ? "" : " $surnames";
    return "${firstName ?? ""}$surnameWithSpace";
  }
}
