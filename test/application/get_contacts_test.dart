import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

void main() {
  test(
      "Convert json String of device to Contact class should work with some values", () {
    final Contact contact = Contact(
        id: UniqueID.fromUniqueString("1"),
        nameData: const NameData(firstName: "hola"),
        labelObjects: {
          Phone: [const Phone(value: "1")],
          Email: [const Email(value: "a@a.com"), const Email(value: "b@b.es")]
        });

    const String json =
        '{"id":"1","name":"hola","emails":["a@a.com","b@b.es"],"numbers":"1"}';

    expect(Contact.fromStringJson(json), contact);
  });

  test(
      "Convert json String of device to Contact class should work with opposite values of arrays respect previous test", () {
    final Contact contact = Contact(
        id: UniqueID.fromUniqueString("1"),
        nameData: const NameData(firstName: "hola"),
        labelObjects: {
          Phone: [const Phone(value: "1"), const Phone(value: "2")],
          Email: [const Email(value: "a@a.com")]
        });

    const String json =
        '{"id":"1","name":"hola","emails":"a@a.com","numbers":["1","2"]}';

    expect(Contact.fromStringJson(json), contact);
  });

  test("Convert contacts string to Contact classes", () {
    final Contact contact1 = Contact(
      id: UniqueID.fromUniqueString("1"),
      nameData: const NameData(firstName: "Ej1", surnames: "EjSurname"),);

    final Contact contact2 = Contact(
        id: UniqueID.fromUniqueString("2"),
        nameData: const NameData(firstName: "Name", surnames: "Surname"),
        labelObjects: {
          Phone: [
            const Phone(value: "(688) 928-877"),
            const Phone(value: "+34 688 92 88 77")
          ],
        });

    const String json =
        '{"contacts":[{\"id\":\"1\",\"name\":\"Ej1 EjSurname\"},{\"id\":\"2\",\"name\":\"Name Surname\",\"numbers\":[\"(688) 928-877\",\"+34 688 92 88 77\"]}]}';

    expect(Contact.contactsFromStringJson(json), [contact1, contact2]);
  });

  test("Convert contacts json string from android to flutter creates new id"
      , () {
        final Contact contact1 = Contact(
          id: UniqueID.fromUniqueString("1"),
          nameData: const NameData(firstName: "Ej1", surnames: "EjSurname"),);

        final Contact contact2 = Contact(
            id: UniqueID.fromUniqueString("2"),
            nameData: const NameData(firstName: "Name", surnames: "Surname"),
            labelObjects: {
              Phone: [
                const Phone(value: "(688) 928-877"),
                const Phone(value: "+34 688 92 88 77")
              ],
            });

        const String json =
            '{"contacts":[{\"id\":\"1\",\"name\":\"Ej1 EjSurname\"},{\"id\":\"2\",\"name\":\"Name Surname\",\"numbers\":[\"(688) 928-877\",\"+34 688 92 88 77\"]}]}';
        List<Contact> contacts = Contact.contactsFromOtherPlatformJson(json);
        expect(contacts[0].id, isNot(contact1.id));
        expect(contacts[0].nameData, contact1.nameData);
        expect(contacts[0].labelObjects, contact1.labelObjects);
        expect(contacts[1].id, isNot(contact2.id));
        expect(contacts[1].nameData, contact2.nameData);
        expect(contacts[1].labelObjects, contact2.labelObjects);
      });
}
