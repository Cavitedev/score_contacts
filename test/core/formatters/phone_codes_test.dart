import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';
import 'package:scorecontacts/presentation/core/formatters/phone_codes.dart';

void main() {
  group('Phone Country Data', () {
    test('Map factory', () {
      PhoneCountryData phoneCountryData = PhoneCountryData.fromMap({
        'country': 'Bhutan',
        'phoneCode': '975',
        'countryCode': 'BT',
        'phoneMask': '+000 00 000 0000',
      });
      expect(phoneCountryData.country, 'Bhutan');
      expect(phoneCountryData.phoneCode, '975');
      expect(phoneCountryData.countryCode, 'BT');
      expect(phoneCountryData.phoneMask, '+000 00 000 0000');
    });
  });

  group('Phone Codes', () {
    test("All Country Phone codes are valid", () {
      for (Map phoneCodeMap in PhoneCodes.countryPhoneCodes) {
        expect(toNumericString(phoneCodeMap['phoneCode']),
            phoneCodeMap['phoneCode']);
      }
    });
    test("Longest prefix length is the constant [longestPrefix]", () {
      int longestPrefix = 0;
      for (Map phoneCodeMap in PhoneCodes.countryPhoneCodes) {
        longestPrefix =
            max(longestPrefix, phoneCodeMap['phoneCode'].toString().length);
      }
      expect(longestPrefix, longestPrefix);
    });
    test('Should return country data from phone number', () {
      expect(
          PhoneCodes.getCountryDataByPhone("+34 666 66 66").countryCode, 'ES');
      expect(
          PhoneCodes.getCountryDataByPhone("+1671 6 (666) 666 6666")
              .countryCode,
          'GU');
    });

    test('Non existent phones', () {
      expect(PhoneCodes.getCountryDataByPhone(""), null);
      expect(PhoneCodes.getCountryDataByPhone("+"), null);
      expect(PhoneCodes.getCountryDataByPhone("###"), null);
      expect(PhoneCodes.getCountryDataByPhone("00000000"), null);
    });

    test('Get all country datas from 1 code', () {
      expect(PhoneCodes.getAllCountryDatasByPhoneCode("1").length, 2);
    });
  });
}
