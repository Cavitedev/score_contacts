part of 'list_diary_bloc.dart';

@freezed
class ListDiaryEvent with _$ListDiaryEvent {
  const factory ListDiaryEvent.watchAll(IMentionable? mentionable) = _WatchAll;

  const factory ListDiaryEvent.diaryEntriesReceived(
      Either<DiaryFailure, List<DiaryEntry>> entriesEither) = _DiaryEntriesReceived;
}
