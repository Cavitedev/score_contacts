

import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/company.dart';

void main(){

  test("json map factory works fine", (){
    final Map<String,dynamic> json = {};
    json["name"] = "Comp Name";
    json["title"] = "Comp Title";

    const Company expected = Company(name: "Comp Name", title: "Comp Title");

    expect(Company.fromJson(json), expected);


  });

}