part of 'list_diary_bloc.dart';

@freezed
class ListDiaryState with _$ListDiaryState {
  const factory ListDiaryState({
    IMentionable? mentionable,
    required List<DiaryEntry> entryList,
  }) = _ListDiaryState;

  factory ListDiaryState.empty() => const ListDiaryState(
        entryList: [],
      );
}
