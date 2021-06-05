part of 'list_diary_bloc.dart';

@freezed
class ListDiaryState with _$ListDiaryState {
  const factory ListDiaryState.initial() = _Initial;

  const factory ListDiaryState.loadInProgress() = _LoadInProgress;

  const factory ListDiaryState.loadSuccess(SuccessListDiary successValues) = _LoadSuccess;

  const factory ListDiaryState.loadFailure(DiaryFailure failure) = _LoadFailure;
}

@freezed
class SuccessListDiary with _$SuccessListDiary {
  const SuccessListDiary._();

  const factory SuccessListDiary({
    required List<SelectionEntry> selectionEntryList,
    required Filter filter,
    @Default(0) int selectedAmount,

  }) = _SuccessListDiary;

  bool hasSelectedEntries() => selectedAmount > 0;
  bool areAllEntriesSelected() => selectedAmount == selectionEntryList.length;


    List<SelectionEntry> displayedEntries() {
    if(filter.filterSearch?.isEmpty ?? false) return selectionEntryList;
    return selectionEntryList.displayedEntries();
  }

  /// Returns the same value with only de selected contacts, use only on PRESENTATION LAYER
  SuccessListDiary copyWithDisplayedEntries(){
    return copyWith(selectionEntryList: displayedEntries());
  }

  SuccessListDiary addOrDecrease1SelectedEntry({required bool isAdd}){
    return copyWith(selectedAmount:selectedAmount + (isAdd?1:-1));
  }

  SuccessListDiary deselectAll () {
    _selectAll(false);
    return copyWith(selectedAmount:0);
  }
  SuccessListDiary selectAll () {
    _selectAll(true);
    return copyWith(selectedAmount:selectionEntryList.length);
  }
  void _selectAll (bool selectOn) {
    for(final SelectionContact in selectionEntryList){
      SelectionContact.isSelected = selectOn;
    }

  }

}
