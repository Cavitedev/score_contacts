
import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';

void main(){

  test("From null full name empty NameData", (){

    final NameData nameData = NameData.fromFullName(null);

    expect(nameData, const NameData());

  });

  test("From empty full name empty NameData", (){

    final NameData nameData = NameData.fromFullName("");

    expect(nameData, const NameData());

  });




}