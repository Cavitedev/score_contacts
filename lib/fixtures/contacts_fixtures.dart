import 'package:scorecontacts/domain/features/contacts/attributes/address.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/company.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/email.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/important_date.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/instant_message.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/names/name_data.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/phone.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/website.dart';
import 'package:scorecontacts/domain/features/contacts/contact.dart';

List<Contact> contacts = [
  Contact(
      nameData: NameData(
          firstName: "Name1",
          firstSurname: "firstSurname1",
          secondSurname: "secondSurname1",
          middleName: "middle name 1",
          namePrefix: "Sr1",
          nameSuffix: "pal1"),
      addresses: [
        Address(address: "Street home1", labelAddress: "home"),
        Address(address: "Street job 1", labelAddress: "job")
      ],
      creationTime: DateTime.now(),
      companies: [Company(title: "assistant1", name: "Office job1")],
      dates: [
        ImportantDate(date: DateTime(1996, 4, 23), label: "birthday"),
        ImportantDate(date: DateTime(2017, 5, 25), label: "wedding")
      ],
      emails: [
        Email(email: "lala@la.com", emailLabel: "personal"),
        Email(email: "jobjob@job.com", emailLabel: "work")
      ],
      phones: [Phone(number: "+356666666", phoneLabel: "personal")],
      instantMessages: [
        InstantMessage(instantMessage: "32425224", label: "Skype")
      ],
      websites: [Website(website: "example.com")]),
  Contact(
      nameData: NameData(
          firstName: "Name2",
          firstSurname: "firstSurname2",
          secondSurname: "secondSurname2",
          middleName: "middle name 2",
          namePrefix: "Sr2",
          nameSuffix: "pal2"),
      addresses: [
        Address(address: "Street home2", labelAddress: "home"),
        Address(address: "Street job 2", labelAddress: "job")
      ],
      creationTime: DateTime.now(),
      companies: [Company(title: "assistant2", name: "Office job2")],
      dates: [
        ImportantDate(date: DateTime(1996, 4, 23), label: "birthday"),
        ImportantDate(date: DateTime(2017, 5, 25), label: "wedding")
      ],
      emails: [
        Email(email: "lala@la.com", emailLabel: "personal"),
        Email(email: "jobjob@job.com", emailLabel: "work")
      ],
      phones: [Phone(number: "+356666666", phoneLabel: "personal")],
      instantMessages: [
        InstantMessage(instantMessage: "32425224", label: "Skype")
      ],
      websites: [Website(website: "example.com")]),

];
