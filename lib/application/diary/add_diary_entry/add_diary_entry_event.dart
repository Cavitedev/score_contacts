part of 'add_diary_entry_bloc.dart';

@freezed
class AddDiaryEntryEvent with _$AddDiaryEntryEvent {
  const factory AddDiaryEntryEvent.initialize() = _Initialize;

  const factory AddDiaryEntryEvent.onEntryTextChanged({
    required String text,
    required int baseOffset,
    required int extentOffset,
    required String trigger,
  }) = _OnEntryTextChanged;
}
