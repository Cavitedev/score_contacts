import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/infrastructure/contacts/contact_dtos.dart';

import '../../core/fixtures/contacts.dart';

void main() {
  Map<String, dynamic> contactsWithNullsJson;

  setUp(() {
    contactsWithNullsJson =
        ContactDTO.fromDomain(ContactFixtures.contactWillNulls).toJson();
  });

  test('DTO json name parameters are ommited if they are null', () {
    final Map<String, dynamic> nameData =
        contactsWithNullsJson[nameDataName] as Map<String, dynamic>;

    expect(nameData.containsKey("surname"), false);
  });
  test('gets null values if parameter was not found when saving', () {
    ContactDTO contactDTO = ContactDTO.fromJson(contactsWithNullsJson);
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
    print(contactsWithNullsJson[companiesName]);
    final List<Map<String, dynamic>> companies =
        contactsWithNullsJson['companies'] as List<Map<String, dynamic>>;

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
        contactsWithNullsJson[emailsName] as List<Map<String, dynamic>>;

    expect(labelObjects.length, 1);
  });
}
