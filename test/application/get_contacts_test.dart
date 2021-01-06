import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

void main() {
  test("Convert json String of device to Contact class", () {
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
}
