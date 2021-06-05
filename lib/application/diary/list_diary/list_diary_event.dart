part of 'list_diary_bloc.dart';

@freezed
class ListDiaryEvent with _$ListDiaryEvent {
  const factory ListDiaryEvent.watchAll(IMentionable? mentionable) = _WatchAll;

  const factory ListDiaryEvent.diaryEntriesReceived(
      Either<DiaryFailure, List<DiaryEntry>> entriesEither) = _DiaryEntriesReceived;

  const factory ListDiaryEvent.search(String text) = _Search;

  const factory ListDiaryEvent.toggleSelection(SelectionEntry selectionEntry) =
      _ToggleSelection;

  const factory ListDiaryEvent.selectAll() = _SelectAll;

  const factory ListDiaryEvent.deselectAll() = _DeselectAll;
}
