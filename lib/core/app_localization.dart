import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalization {
  final String languageCode;

  AppLocalization(this.languageCode);

  factory AppLocalization.of(BuildContext context) =>
      Localizations.of<AppLocalization>(context, AppLocalization);

  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationDelegate();

  Map<String, String> _localizedStrings;

  Future<void> load() async {
    final String jsonString =
        await rootBundle.loadString("lang/$languageCode.json");
    final Map<String, dynamic> jsonMap =
        json.decode(jsonString) as Map<String, dynamic>;
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String translate(String key, {List<String> args}){
    String textStr = _localizedStrings[key];
    while(args.isNotEmpty){
      textStr = textStr.replaceFirst("%s", args[0]);
      args.removeAt(0);
    }
    return textStr;

  }


}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ["en", "es"].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localizations = AppLocalization(locale.languageCode);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
