part of 'add_diary_entry_bloc.dart';

@freezed
class AddDiaryEntryState with _$AddDiaryEntryState {

  const AddDiaryEntryState._();

  const factory AddDiaryEntryState({
    required DiaryEntryApplication entryField,
    required MentionListManager mentionListManager,
  }) = _AddDiaryEntryState;

  factory AddDiaryEntryState.initial() =>
      AddDiaryEntryState(entryField: DiaryEntryApplication.empty(),
      mentionListManager: MentionListManager.empty()
      );

  DiaryEntry get diaryEntry => entryField.entry;

}
