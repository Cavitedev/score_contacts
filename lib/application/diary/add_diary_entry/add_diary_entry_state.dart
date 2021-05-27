part of 'add_diary_entry_bloc.dart';

@freezed
class AddDiaryEntryState with _$AddDiaryEntryState {
  const factory AddDiaryEntryState({required DiaryEntryApplication entry}) = _AddDiaryEntryState;

  factory AddDiaryEntryState.initial() =>
      AddDiaryEntryState(entry: DiaryEntryApplication.empty());
}
