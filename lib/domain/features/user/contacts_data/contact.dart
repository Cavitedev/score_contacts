import 'package:scorecontacts/domain/features/user/contacts_data/properties/address.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/company.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/important_date.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/instant_message.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/website.dart';

class Contact {
  NameData nameData;
  List<Company> companies;
  List<Phone> phones;
  List<Email> emails;
  List<Address> addresses;
  List<InstantMessage> instantMessages;
  List<Website> websites;
  List<ImportantDate> dates;
  DateTime creationTime;

  Contact({this.nameData, this.companies, this.phones, this.emails,
      this.addresses, this.instantMessages, this.websites,this.dates,
    this.creationTime});


  @override
  String toString() {
    return 'Contact{nameData: $nameData, companies: $companies, phones: $phones, emails: $emails, addresses: $addresses, instantMessages: $instantMessages, websites: $websites, dates: $dates, creationTime: $creationTime}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Contact &&
          runtimeType == other.runtimeType &&
          nameData == other.nameData &&
          companies == other.companies &&
          phones == other.phones &&
          emails == other.emails &&
          addresses == other.addresses &&
          instantMessages == other.instantMessages &&
          websites == other.websites &&
          dates == other.dates &&
          creationTime == other.creationTime;

  @override
  int get hashCode =>
      nameData.hashCode ^
      companies.hashCode ^
      phones.hashCode ^
      emails.hashCode ^
      addresses.hashCode ^
      instantMessages.hashCode ^
      websites.hashCode ^
      dates.hashCode ^
      creationTime.hashCode;


}