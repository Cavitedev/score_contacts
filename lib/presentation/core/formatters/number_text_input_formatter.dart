import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/presentation/core/formatters/formatter_tools.dart';
import 'package:scorecontacts/presentation/core/formatters/phone_codes.dart';

class NumberTextInputFormatter extends TextInputFormatter {
  final BuildContext context;
  PhoneCountryData _countryData;
  bool _localRegion = false;

  NumberTextInputFormatter({@required this.context});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      _clearCountryData();
      return newValue;
    }

    if (newValue.text[0] == "+" && newValue.text.length > 1) {
      _trySetCountryDataFromPhone(newValue);
    } else {
      bool isStartingToType =
          newValue.text.length == 1 && oldValue.text.length == 0;
      if (isStartingToType && isDigit(newValue.text[0])) {
        _setCountryDataToLocaleRegion();
      }
    }
    if (_countryData == null) return newValue;

    String mask = _localRegion
        ? _countryData.phoneMaskWithoutPrefix()
        : _countryData.phoneMask;
    bool overflowPhoneMask =
        toNumericString(newValue.text).length > toNumericString(mask).length;

    final bool isErasing = newValue.text.length < oldValue.text.length;

    if (isErasing) {
      if (overflowPhoneMask) {
        return newValue;
      }
    }

    String newText;
    if (overflowPhoneMask) {
      newText = (_localRegion ? '' : '+') + toNumericString(newValue.text);
    } else {
      newText = formatByMask(newValue.text, mask);
    }
    if (newText.isEmpty) {
      _clearCountryData();
    }
    return new TextEditingValue(
      text: newText,
      selection: new TextSelection.collapsed(offset: newText.length),
    );
  }

  void _trySetCountryDataFromPhone(TextEditingValue newValue) {
    PhoneCountryData phoneCountryData =
        PhoneCodes.getCountryDataByPhone(newValue.text);
    if (phoneCountryData != null) {
      _countryData = phoneCountryData;
      _localRegion = false;
    }
  }

  void _setCountryDataToLocaleRegion() {
    _countryData = PhoneCountryData.fromCountryCode(
        countryCode: Localizations.localeOf(context).countryCode);
    _localRegion = true;
  }

  void _clearCountryData() {
    _countryData = null;
    _localRegion = false;
  }
}
