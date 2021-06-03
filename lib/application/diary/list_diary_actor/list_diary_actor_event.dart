part of 'list_diary_actor_bloc.dart';

@freezed
class ListDiaryActorEvent with _$ListDiaryActorEvent{
    const factory ListDiaryActorEvent.delete({required List<DiaryEntry> entryList}) = _Delete;
      }