import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

// ignore: avoid_classes_with_only_static_members
class ContactFixtures {


  static Contact completeContact = Contact(
      nameData: const NameData(firstName: "name", surnames: "surnames"),
      id: UniqueID.fromUniqueString("test"),
      companies: [
        const Company(name: "good company", title: "job")
      ],
      labelObjects: {
        Email: [const Email(label: "Test", value: "asd@asd.asd"), const Email(value: "ex@mail.com")],
        Phone: [const Phone(label: "Test", value: "+34 123 45 67 89"), const Phone(value: "(987) 654-321")]
      });

  static Contact emptyContact = Contact.empty();

  static Contact contactWithNulls = Contact(
      nameData: const NameData(
        firstName: "name",
      ),
      id: UniqueID.fromUniqueString("test"),
      companies: [
        const Company(name: "good company", title: "job"),
        const Company(name: "bad company"),
        const Company(title: "bad job"),
        const Company()
      ],
      labelObjects: {
        Email: [
          const Email(label: "Test", value: "asd@asd.asd"),
          const Email(label: "Test", value: null)
        ],
        Phone: [
          const Phone(label: "Test", value: "1234"),
          const Phone(label: "Test", value: null)
        ]
      });
}
