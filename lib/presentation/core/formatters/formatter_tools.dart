final _digitRegex = RegExp(r'[0-9]+');

/// Check is String of length 1 containst a digit [0-9]
bool isDigit(String char) {
  if (char == null || char.length > 1) return false;
  return _digitRegex.hasMatch(char);
}

/// Convert a String to another one becoming a positive number
String toNumericString(String str) {
  if (str == null) return '';
  return str.splitMapJoin(
    _digitRegex,
    onMatch: (match) => match.group(0),
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
String formatByMask(String numberText, String mask) {
  numberText = toNumericString(numberText);
  if (numberText.isEmpty) return "";
  StringBuffer stringBuffer = new StringBuffer();
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
