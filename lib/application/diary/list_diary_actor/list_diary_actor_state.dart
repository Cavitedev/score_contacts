part of 'list_diary_actor_bloc.dart';

@freezed
class ListDiaryActorState with _$ListDiaryActorState{
    const factory ListDiaryActorState.initial() = _Initial;
    
    const factory ListDiaryActorState.actionInProgress(DiaryLoading loading) = _ActionInProgress;
    
    const factory ListDiaryActorState.deleteSucessful(int amount) = _DeleteSucessful;

    const factory ListDiaryActorState.diaryFailure(DiaryFailure failure) = _DiaryFailure;
    
      }