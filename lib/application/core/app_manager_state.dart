part of 'app_manager_cubit.dart';

@freezed
abstract class AppManagerState implements _$AppManagerState {
  const AppManagerState._();

  const factory AppManagerState({ThemeMode themeMode, String region}) = _AppManagerState;

  factory AppManagerState.initial() =>
      const AppManagerState(themeMode: ThemeMode.system, region:"US");
}
