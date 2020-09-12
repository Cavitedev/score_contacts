part of 'focus_cubit.dart';

@freezed
abstract class FocusState with _$FocusState {
  const factory FocusState.focused() = _Focused;

  const factory FocusState.unfocused() = _Unfocused;
}
