part of 'app_manager_cubit.dart';

@freezed
class AppManagerState with _$AppManagerState{
  const AppManagerState._();

  const factory AppManagerState({
    required ThemeMode themeMode,
    required String region,
    String? languageCode,
  }) = _AppManagerState;

  factory AppManagerState.initial() =>
      const AppManagerState(themeMode: ThemeMode.system, region: "US");
}
