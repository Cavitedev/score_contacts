part of 'add_diary_entry_bloc.dart';

@freezed
class AddDiaryEntryEvent with _$AddDiaryEntryEvent {
  const factory AddDiaryEntryEvent.initialize({
    required List<IMentionable> mentionableList,
  }) = _Initialize;

  const factory AddDiaryEntryEvent.onEntryTextChanged({
    required String text,
    required int baseOffset,
    required int extentOffset,
    required String trigger,
  }) = _OnEntryTextChanged;

  const factory AddDiaryEntryEvent.onSelectMention({required IMentionable iMentionable})
  = _OnSelectMention;

}
