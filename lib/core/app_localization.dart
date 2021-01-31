import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalization {
  String _languageCode;
  String get languageCode => _languageCode;


  AppLocalization(this._languageCode);

  factory AppLocalization.of(BuildContext context) =>
      Localizations.of<AppLocalization>(context, AppLocalization);

  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationDelegate();

  Map<String, String> _localizedStrings;

  String translate(String key, {List<String> args}){
    String textStr = _localizedStrings[key];
    if(args == null) return textStr;
    while(args.isNotEmpty){
      textStr = textStr.replaceFirst("%s", args[0]);
      args.removeAt(0);
    }
    return textStr;

  }

  Future<void> load() async {
    final String jsonString =
        await rootBundle.loadString("lang/$_languageCode.json");
    final Map<String, dynamic> jsonMap =
        json.decode(jsonString) as Map<String, dynamic>;
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  Future<void> changeLanguage(String languageCode) async{
    if(_languageCode == _languageCode) return;
    _languageCode = languageCode;
    await load();

  }




}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ["en", "es"].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) async {
    final AppLocalization localization = AppLocalization(locale.languageCode);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
