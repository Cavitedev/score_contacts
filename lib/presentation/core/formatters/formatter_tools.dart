import 'package:scorecontacts/presentation/core/formatters/phone_codes.dart';

// ignore: unnecessary_raw_strings
final _digitRegex = RegExp(r'[0-9]+');

// ignore: unnecessary_raw_strings
final _isNotPhoneRegex = RegExp(r'[^0-9()#+\-\. ]');

/// Check is String of length 1 containst a digit [0-9]
bool isDigit(String? char) {
  if (char == null || char.length > 1) return false;
  return _digitRegex.hasMatch(char);
}

/// Convert a String to another one becoming a positive number
String? toNumericString(String? str) {
  if (str == null) return null;
  return str.splitMapJoin(
    _digitRegex,
    onMatch: (match) => match.group(0)!,
    onNonMatch: (match) => '',
  );
}

///Gets the position inside a string of n-number
///Example "ji32in4", 2 returns 3 as it is the position of the second number
int positionOfUmpteenthNumber(String str, int pos) {
  int currentLookPos = 1;
  if (pos <= 0) return -1;
  for (int i = 0; i < str.length; i++) {
    if (isDigit(str[i])) {
      if (currentLookPos == pos) {
        return i;
      } else {
        currentLookPos++;
      }
    }
  }
  return -1;
}

/// format a String , the 0 of the mask means any number
/// For example number "12345" with mask "00-000" returns "12-345"
String formatByMask(String text, String mask) {
  final String? numberText = toNumericString(text);
  if (numberText==null || numberText.isEmpty) return "";
  final StringBuffer stringBuffer = StringBuffer();
  int numIndex = 0;
  for (int i = 0; i < mask.length; i++) {
    if (numIndex >= numberText.length) break;
    if (mask[i] == "0") {
      if (isDigit(numberText[numIndex])) {
        stringBuffer.write(numberText[numIndex]);
        numIndex++;
      } else {
        break;
      }
    } else {
      stringBuffer.write(mask[i]);
    }
  }
  return stringBuffer.toString();
}

/// removes the prefix of a number
/// when the country of the number is the same of the context
String? removePrefixOnNumberWhenSameCountry(
    String? phoneNumber, String countryCode) {
  if (phoneNumber == null || phoneNumber.isEmpty) return phoneNumber;

  if (!PhoneCodes.isCountryDataExplicit(phoneNumber)) return phoneNumber;
  final PhoneCountryData? phoneCountryData =
      PhoneCodes.getCountryDataByPhone(phoneNumber);

  final PhoneCountryData countryData =
      PhoneCountryData.fromCountryCode(countryCode: countryCode);

  if (countryData == phoneCountryData) {
    String output = toNumericString(phoneNumber)!;
    output = output.substring(phoneCountryData!.countryCode.length);
    return formatByMask(output, phoneCountryData.phoneMaskWithoutPrefix());
  } else {
    return phoneNumber;
  }
}

/// add the prefix of a number
/// when the country of the number should be the same of the context
String addPrefixOnNumber(String? phoneNumber, String countryCode) {
  if (phoneNumber == null || phoneNumber.isEmpty) return "";
  if (PhoneCodes.isCountryDataExplicit(phoneNumber)) return phoneNumber;
  final PhoneCountryData countryData =
      PhoneCountryData.fromCountryCode(countryCode: countryCode);

  final String output = toNumericString(phoneNumber)!;
  return countryData.countryCodeToString() + output;
}

/// Entered string contains only phone characters
bool isPhoneString(String str){
  return !_isNotPhoneRegex.hasMatch(str);
}