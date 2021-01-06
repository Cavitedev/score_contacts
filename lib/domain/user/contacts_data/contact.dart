import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact implements _$Contact {
  const Contact._();

  const factory Contact({
    @required UniqueID id,
    @required NameData nameData,
    Map<Type, List<ILabelObject>> labelObjects,
    List<Company> companies,
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

    Map<String,dynamic> jsonMap = json.decode(jsonStr) as Map<String,dynamic>;
    return Contact.fromMap(jsonMap);


  }

  factory Contact.fromMap(Map<String,dynamic> map){
  return Contact(
  id: UniqueID.fromUniqueString(map["id"] as String),
  nameData: NameData(firstName: map["name"] as String),
    labelObjects: {
    Phone: [Phone(value: map["numbers"] as String)],
    Email: (map["emails"] as List<dynamic>).map((e) => Email(value: e as String)).toList(),

    }

  );
  }

}
