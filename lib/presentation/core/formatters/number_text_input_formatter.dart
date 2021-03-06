import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';
import 'package:scorecontacts/presentation/core/formatters/phone_codes.dart';

/// Format numbers given prefix or country context
class PhoneTextFormatter extends TextInputFormatter {
  final String countryCode;
  PhoneCountryData? _countryData;
  bool _localRegion = false;

  PhoneTextFormatter({required this.countryCode});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      _clearCountryData();
      return newValue;
    }

    if (newValue.text[0] == "+" && newValue.text.length > 1) {
      _trySetCountryDataFromPhoneValue(newValue);
    } else {
      if (_countryData == null &&
          (isDigit(newValue.text[0]) ||
              (newValue.text.length > 1 && isDigit(newValue.text[1])))) {
        _setCountryDataToLocaleRegion();
      }
    }
    if (_countryData == null) return newValue;
    final PhoneCountryData countryData = _countryData!;

    final String mask = _localRegion
        ? _getLocalPhoneMask(newValue.text)
        : countryData.phoneMask;
    final bool overflowPhoneMask =
        toNumericString(newValue.text)!.length > toNumericString(mask)!.length;

    final bool isErasing = newValue.text.length < oldValue.text.length;

    if (isErasing) {
      if (overflowPhoneMask) {
        return newValue;
      }
    }

    String newText;
    if (overflowPhoneMask) {
      newText =
          (_localRegion ? '' : '+') + (toNumericString(newValue.text) ?? "");
    } else {
      newText = formatByMask(newValue.text, mask);
    }
    if (newText.isEmpty) {
      _clearCountryData();
    }
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(
          offset: newValue.selection.baseOffset +
              newText.length -
              newValue.text.length),
    );
  }

  String _getLocalPhoneMask(String newText) {
    for (final String mask in _countryData!.localMasks!) {
      if (toNumericString(mask)!.length > toNumericString(newText)!.length) {
        return mask;
      }
    }

    return _countryData!.phoneMaskWithoutPrefix();
  }

  void _trySetCountryDataFromPhoneValue(TextEditingValue newValue) {
    final PhoneCountryData? phoneCountryData =
        PhoneCodes.getCountryDataByPhone(newValue.text);
    if (phoneCountryData != null) {
      _countryData = phoneCountryData;
      _localRegion = false;
    }
  }

  void _setCountryDataToLocaleRegion() {
    _countryData = PhoneCountryData.fromCountryCode(countryCode: countryCode);
    _localRegion = true;
  }

  void _clearCountryData() {
    _countryData = null;
    _localRegion = false;
  }
}
