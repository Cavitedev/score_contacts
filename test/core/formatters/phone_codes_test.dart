import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/core/exceptions/constructor_exceptions.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';
import 'package:scorecontacts/presentation/core/formatters/phone_codes.dart';

void main() {
  group('Phone Country Data', () {
    test('Map factory', () {
      final PhoneCountryData phoneCountryData = PhoneCountryData.fromMap({
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
    group('Country code factory', () {
      test('Country code factory when valid', () {
        final PhoneCountryData phoneCountryData =
            PhoneCountryData.fromCountryCode(countryCode: 'BT');
        expect(phoneCountryData.country, 'Bhutan');
        expect(phoneCountryData.phoneCode, '975');
        expect(phoneCountryData.countryCode, 'BT');
        expect(phoneCountryData.phoneMask, '+000 00 000 0000');
      });
      test('Country code factory when invalid code', () {
        expect(
            () => PhoneCountryData.fromCountryCode(countryCode: '#j-'),
            throwsA(isA<ConstructorException>().having(
                (exception) => exception.message,
                'Check right message',
                "Country code does not exist")));
      });
    });
    group('Get mask without prefix', () {
      test('Works fine some samples', () {
        final PhoneCountryData phoneCountryData = PhoneCountryData.fromMap({
          'country': 'Bhutan',
          'phoneCode': '975',
          'countryCode': 'BT',
          'phoneMask': '+000 00 000 0000',
        });
        expect(phoneCountryData.phoneMaskWithoutPrefix(), '00 000 0000');
      });

      test('Works fine with American derivative country', () {
        final PhoneCountryData phoneCountryData = PhoneCountryData.fromMap({
          'country': 'American Samoa',
          'phoneCode': '1684',
          'countryCode': 'AS',
          'phoneMask': '+0 (000) 000 0000',
        });
        expect(phoneCountryData.phoneMaskWithoutPrefix(), '000 0000');
      });
      test('Works fine with United States ', () {
        final PhoneCountryData phoneCountryData = PhoneCountryData.fromMap({
          'country': 'United States',
          'phoneCode': '1',
          'countryCode': 'US',
          'phoneMask': '+0 (000) 000 0000',
        });
        expect(phoneCountryData.phoneMaskWithoutPrefix(), '(000) 000 0000');
      });
    });
  });

  group('Phone Codes', () {
    test("All Country Phone codes are valid", () {
      for (final Map phoneCodeMap in countryPhoneCodes) {
        expect(toNumericString(phoneCodeMap['phoneCode'] as String),
            phoneCodeMap['phoneCode']);
      }
    });
    test("Longest prefix length is the constant [longestPrefix]", () {
      int longestPrefix = 0;
      for (final Map phoneCodeMap in countryPhoneCodes) {
        longestPrefix =
            max(longestPrefix, phoneCodeMap['phoneCode']
                .toString()
                .length);
      }
      expect(longestPrefix, longestPrefix);
    });

    test('Should return country data from phone number', () {
      expect(
          PhoneCodes
              .getCountryDataByPhone("+34 666 66 66")
              .countryCode, 'ES');
      expect(
          PhoneCodes
              .getCountryDataByPhone("+1671 6 (666) 666 6666")
              .countryCode,
          'GU');
    });
    test('Not complete prefix given', () {
      expect(PhoneCodes.getCountryDataByPhone("+3"), null);
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
