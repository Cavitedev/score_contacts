import 'package:flutter_test/flutter_test.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';

void main() {
  group('is Digit method', () {
    test('Works with digits', () {
      final List<String> testDigits = [
        '0',
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        '9'
      ];
      for (final String digit in testDigits) {
        expect(isDigit(digit), true);
      }
    });
    test('Fails with not digits', () {
      final List<String> testDigits = [
        'a',
        'f',
        'ñ',
        '/',
        '(',
        ':',
        ';',
        '🧑',
        '👨‍',
        '💩'
      ];
      for (final String digit in testDigits) {
        expect(isDigit(digit), false);
      }
    });

    test('Fails with long string ', () {
      final List<String> testDigitis = ['as', 'ad', '99913', '10', '-1'];
      for (final String digit in testDigitis) {
        expect(isDigit(digit), false);
      }
    });
  });

  group('toNumericString method', () {
    test("On numeric string don't do anything", () {
      final List<String> testStrings = [
        '24252',
        '00000',
        '234242',
        '12134',
        '121341',
        '1234'
      ];
      for (final String numericString in testStrings) {
        expect(toNumericString(numericString), numericString);
      }
    });

    test('Convert String to positive number', () {
      expect(toNumericString("2-42-/14p"), '24214');
      expect(toNumericString("2/(&#@💩1"), "21");
      expect(toNumericString("/ (12134  b"), "12134");
      expect(toNumericString("+0 (000) 000 0000"), '00000000000');
    });

    test('Negative numbers become positive', () {
      expect(toNumericString('-1'), '1');
      expect(toNumericString('-0'), '0');
    });
  });

  group('positionOfUmpteenthNumber', () {
    test("Returns -1 when not number is found", () {
      expect(positionOfUmpteenthNumber("wedewf", 0), -1);
      expect(positionOfUmpteenthNumber("wed23", 3), -1);
    });

    test("Returns position when number is found", () {
      expect(positionOfUmpteenthNumber("123", 1), 0);
      expect(positionOfUmpteenthNumber("wed23", 1), 3);
    });
  });

  group('FormatByMask method', () {
    test("Should return same string when number is valid", () {
      expect(formatByMask("12345", "00000"), "12345");
      expect(formatByMask("12345", "000000000"), "12345");
      expect(formatByMask("12345", "0000"), "1234");
    });
    test("Should format string as mask says", () {
      expect(formatByMask("12345", "00-000"), "12-345");
      expect(formatByMask("12345", "000(000)00-#0"), "123(45");
      expect(formatByMask("+688", "+000 00000"), "+688");
    });
  });

  group('Remove prefix on same country', () {
    test("Should remove prefix on right country", () {
      final String number = "+34123456789";
      String formattedNumber = removePrefixOnNumberWhenSameCountry(number, "ES");
      expect(formattedNumber, "123 45 67 89");
    });
  });
}
