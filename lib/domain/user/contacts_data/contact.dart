import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {


  const Contact._();

  const factory Contact({
    required UniqueID id,
    required NameData nameData,
    Map<Type, List<ILabelObject>?>? labelObjects,
    List<Company>? companies,
  }) = _Contact;

  factory Contact.empty() => Contact(
        id: UniqueID(),
        nameData: const NameData(),
        companies: [Company.empty()],
        labelObjects: {
          Phone: <Phone>[const Phone()],
          Email: <Email>[const Email()],
        },
      );

  factory Contact.fromStringJson(String jsonStr) {
    final Map<String, dynamic> jsonMap =
        json.decode(jsonStr) as Map<String, dynamic>;
    return Contact.fromMap(jsonMap);
  }

  factory Contact.fromMap(Map<String, dynamic> map) {

    final List<dynamic>? phones = (map["numbers"] is String)
        ? [map["numbers"]]
        : (map["numbers"] as List<dynamic>?);

    final List<dynamic>? emails = (map["emails"] is String)
        ? [map["emails"]]
        : map["emails"] as List<dynamic>?;

    final List<dynamic>? companies = (map["companies"] is Map<String,dynamic>)
        ? [map["companies"]]
        : map["companies"] as List<dynamic>?;

    final bool areThereLabelObjects = phones != null || emails != null;

    return Contact(
        id: UniqueID.fromUniqueString(map["id"] as String),
        nameData: NameData.fromFullName(map["name"] as String),
        companies: companies?.map((compMap) => Company.fromJson(compMap as Map<String, dynamic>)).toList(),
        labelObjects: areThereLabelObjects
            ? {
                if (phones != null)
                  Phone: phones.map((e) => Phone(value: e as String)).toList(),
                if (emails != null)
                  Email: emails.map((e) => Email(value: e as String)).toList(),
              }
            : null);
  }

  static List<Contact> contactsFromOtherPlatformJson(String jsonStr) {
    return contactsFromStringJson(jsonStr)
        .map((contact) => contact.copyWith(id: UniqueID()))
        .toList();
  }

  static List<Contact> contactsFromStringJson(String jsonStr) {
    final Map<String, dynamic> jsonMap =
        json.decode(jsonStr) as Map<String, dynamic>;

    final List<dynamic> contacts = (jsonMap["contacts"] is String)
        ? [jsonMap["contacts"]]
        : (jsonMap["contacts"] as List<dynamic>);
    return contacts
        .map((e) => Contact.fromMap(e as Map<String, dynamic>))
        .toList();
  }

  String getFullName() {
    return nameData.toFullName();
  }

  Iterable<T>  getLabelObjectList<T extends ILabelObject>() {
    return labelObjects![T]!.map((iLabelObject) => iLabelObject as T);
  }


  String getDisplayedChar(){
    return nameData.firstName?.substring(0, 1).toUpperCase() ?? "";
  }

  String? matchPattern(String? pattern) {
    if (pattern == null) return getFullName();

    final String lowerCasePattern = pattern.toLowerCase();
    if (_matchesName(lowerCasePattern)) {
      return getFullName();
    }


    if(isPhoneString(lowerCasePattern)){
      for (final Phone phone in getLabelObjectList<Phone>()) {
        if (phone.matches(lowerCasePattern)) {
          return phone.value;
        }
      }
    }

    for (final Email email in getLabelObjectList<Email>()) {
      if (email.value?.toLowerCase().contains(lowerCasePattern) ?? false) {
        return email.value;
      }
    }


    return null;
  }

  bool _matchesName(String lowerCasePattern) =>
      getFullName().toLowerCase().contains(lowerCasePattern);
}
