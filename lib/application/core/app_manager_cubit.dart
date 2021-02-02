import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_manager_cubit.freezed.dart';
part 'app_manager_state.dart';

@injectable
class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerState.initial());


  Future<void> changeThemeData(ThemeMode themeMode) async {

    await _getPrefs().then((prefs) => prefs.setInt("theme", themeMode.index));
    _setThemeData(themeMode);
  }

  void _setThemeData(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  Future<void> changeLanguage(String languageCode) async {
    await _getPrefs().then((prefs) => prefs.setString("language", languageCode));
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
    const channel = MethodChannel("com.cavitedev.scorecontacts/region");
    final String region = await channel.invokeMethod("getSystemRegion");
    emit(state.copyWith(region: region));
  }

  Future<void> _readPreferences() async {
    final prefs = await _getPrefs();
    final int themeIndex = prefs.getInt('theme') ?? ThemeMode.system.index;
    _setThemeData(ThemeMode.values[themeIndex]);
    final String language = prefs.getString('language') ?? "system";
    _setLanguageCode(language);
  }

  SharedPreferences _prefs;

  Future<SharedPreferences> _getPrefs() async =>
      _prefs == null ? SharedPreferences.getInstance() : Future.value(_prefs);
}
