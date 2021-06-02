part of 'list_diary_bloc.dart';

@freezed
class ListDiaryState with _$ListDiaryState{
    const factory ListDiaryState.initial() = _Initial;
    
    const factory ListDiaryState.loadInProgress() = _LoadInProgress;
    
    const factory ListDiaryState.loadSuccess(List<DiaryEntry> entryList) = _LoadSuccess;
    
    const factory ListDiaryState.loadFailure(DiaryFailure failure) = _LoadFailure;
    
      }
