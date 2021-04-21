import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_manager_cubit.freezed.dart';
part 'app_manager_state.dart';

@injectable
class AppManagerCubit extends Cubit<AppManagerState>
    with WidgetsBindingObserver {
  AppManagerCubit() : super(AppManagerState.initial());

  Future<void> changeThemeData(ThemeMode themeMode) async {
    await _getPrefs().then((prefs) => prefs.setInt("theme", themeMode.index));
    _setThemeData(themeMode);
  }

  void _setThemeData(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  Future<void> changeLanguage(String languageCode) async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      await _getPrefs()
          .then((prefs) => prefs.setString("language", languageCode));
    }
    _setLanguageCode(languageCode);
  }

  void _setLanguageCode(String languageCode) {
    if (languageCode == "system") {
      emit(state.copyWith(languageCode: null));
    } else {
      emit(state.copyWith(languageCode: languageCode));
    }
  }

  Future<void> init() async {
    _getSystemRegion();
    _readPreferences();
  }

  Future<void> _getSystemRegion() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      const channel = MethodChannel("com.cavitedev.scorecontacts/region");
      final String region =
      await channel.invokeMethod("getSystemRegion") as String;
      emit(state.copyWith(region: region));
    } else {
      final String? region = window.locale?.countryCode;
      emit(state.copyWith(region: region!));
      WidgetsBinding.instance?.addObserver(this);
    }
  }


  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);

    //Removing last ?. breaks the code
    final String? region = WidgetsBinding.instance?.window.locale?.countryCode;
    if (region != null) {
      emit(state.copyWith(region: region));
    }
  }

  Future<void> _readPreferences() async {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return;
    }
    final prefs = await _getPrefs();
    final int themeIndex = prefs.getInt('theme') ?? ThemeMode.system.index;
    _setThemeData(ThemeMode.values[themeIndex]);
    final String language = prefs.getString('language') ?? "system";
    _setLanguageCode(language);
  }

  SharedPreferences? _prefs;

  Future<SharedPreferences> _getPrefs() async =>
      _prefs == null ? SharedPreferences.getInstance() : Future.value(_prefs);
}
