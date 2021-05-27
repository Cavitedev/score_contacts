import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

import '../../core/fixtures/contacts_fixture.dart';

void main() {

  Contact _completeContact () => ContactFixtures.completeContact;


  test("Get phones work on complete contact", (){
    final Iterable<Phone> phones = [const Phone(label: "Test", value: "+34 123 45 67 89"), const Phone(value: "(987) 654-321")];
    expect(_completeContact().getLabelObjectList<Phone>(), phones);
  });

  test("Full name returns empty string on empty contact", (){
    final String fullName = ContactFixtures.emptyContact.getName();
    expect(fullName, "");
  });
  test("Full name returns empty string on complete contact", (){
    final String fullName = _completeContact().getName();
    expect(fullName, "name surnames");
  });

  test("Should not match when input is null", () {

    final String? match = _completeContact().matchPattern(null);
    expect(match,_completeContact().getName());

  });

  test("Should match on any case the name", () {

    final String? match = _completeContact().matchPattern("NaMe SurNaME");
    expect(match,_completeContact().getName());

  });

  test("Should match phone number when correctly written", () {

    final String? match = _completeContact().matchPattern("123 45");
    expect(match,"+34 123 45 67 89");

  });

  test("Should match phone number only looking at numbers", () {

    final String? match = _completeContact().matchPattern(".-#()+34123");
    expect(match,"+34 123 45 67 89");

  });

  test("Phones are not searched when regex containt non-phone characters", (){
    final String? match = _completeContact().matchPattern("a+34 123");
    expect(match,null);
  });

  test("All phones are searched", (){
    final String? match = _completeContact().matchPattern("(987) 654-32");
    expect(match,"(987) 654-321");
  });

  test("phones search works on contact with nulls", (){
    final String? match = ContactFixtures.contactWillNulls.matchPattern("1234");
    expect(match,"1234");
  });

  test("Emails are searched on first element", (){
    final String? match = _completeContact().matchPattern("@asd.asd");
    expect(match,"asd@asd.asd");
  });


}
