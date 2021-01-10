import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/infrastructure/contacts/contact_dtos.dart';

import '../../core/fixtures/contacts.dart';

void main() {
  Map<String, dynamic> contactsWithNullsJson() =>
      ContactDTO.fromDomain(ContactFixtures.contactWillNulls).toJson();



  test('Simple contact can be converted to json without errors', () {
    const NameData nameDataDomain =
        NameData(firstName: "Ej1", surnames: "EjSurname");
    final Contact contact = Contact(
      id: UniqueID.fromUniqueString("1"),
      nameData: nameDataDomain,
    );
    final ContactDTO expectedDto = ContactDTO(
      id: "1",
      nameDataDTO: NameDataDTO.fromDomain(nameDataDomain),
      companiesDTO: [],
      phonesDTO: [],
      emailsDTO: []
    );
    final ContactDTO contactDTO = ContactDTO.fromDomain(contact);
    expect(expectedDto.id, contactDTO.id);
    expect(expectedDto.nameDataDTO, contactDTO.nameDataDTO);
    expect(expectedDto.emailsDTO, contactDTO.emailsDTO);
    expect(expectedDto.phonesDTO, contactDTO.phonesDTO);
  });

  test('DTO json name parameters are ommited if they are null', () {
    final Map<String, dynamic> nameData =
        contactsWithNullsJson()[nameDataName] as Map<String, dynamic>;

    expect(nameData.containsKey("surname"), false);
  });
  test('gets null values if parameter was not found when saving', () {
    ContactDTO contactDTO = ContactDTO.fromJson(contactsWithNullsJson());
    contactDTO = ContactDTO(
      id: "test",
      serverTimeStamp: contactDTO.serverTimeStamp,
      nameDataDTO: contactDTO.nameDataDTO,
      companiesDTO: contactDTO.companiesDTO,
      emailsDTO: contactDTO.emailsDTO,
      phonesDTO: contactDTO.phonesDTO,
    );
    final Contact contact = contactDTO.toDomain();
    expect(contact.nameData.surnames, null);
  });

  test('DTO json company are ommited if they are null', () {
    final List<Map<String, dynamic>> companies =
        contactsWithNullsJson()['companies'] as List<Map<String, dynamic>>;

    expect(companies[0].containsKey("name"), true);
    expect(companies[0].containsKey("title"), true);
    expect(companies[1].containsKey("name"), true);
    expect(companies[1].containsKey("title"), false);
    expect(companies[2].containsKey("name"), false);
    expect(companies[2].containsKey("title"), true);
    expect(companies.length, 3);
  });

  test('DTO json labelObjects are ommited if their value are null', () {
    final List<Map<String, dynamic>> labelObjects =
        contactsWithNullsJson()[emailsName] as List<Map<String, dynamic>>;

    expect(labelObjects.length, 1);
  });
}
