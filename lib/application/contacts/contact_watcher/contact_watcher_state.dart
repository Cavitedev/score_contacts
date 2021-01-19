part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherState with _$ContactWatcherState {
  const factory ContactWatcherState.initial() = _Initial;

  const factory ContactWatcherState.loadInProgress() = _LoadInProgress;

  const factory ContactWatcherState.loadSuccess(
      LoadSuccessValues stateValues) = _LoadSuccess;

  const factory ContactWatcherState.loadFailure(ContactsFailure failure) =
      _LoadFailure;
}

@freezed
abstract class LoadSuccessValues implements _$LoadSuccessValues {
  const LoadSuccessValues._();


  const factory LoadSuccessValues({
    List<SelectionContact> selectionContactList,
    Filter filter,
    int selectedContactsAmount,
  }) = _LoadSuccessValues;

  bool hasSelectedContacts() => selectedContactsAmount > 0;
  bool areAllContactsSelected() => selectedContactsAmount == selectionContactList.length;

  /// Returns the same value with only de selected contacts, use only on PRESENTATION LAYER
  LoadSuccessValues copyWithDisplayedContacts(){
    return copyWith(selectionContactList: selectionContactList.displayedContacts());
  }

  LoadSuccessValues addOrDecrease1SelectedContact({@required bool isAdd}){
    return copyWith(selectedContactsAmount:selectedContactsAmount + (isAdd?1:-1));
  }

  LoadSuccessValues deselectAll () {
    _selectAll(false);
    return copyWith(selectedContactsAmount:0);
  }
  LoadSuccessValues selectAll () {
    _selectAll(true);
    return copyWith(selectedContactsAmount:selectionContactList.length);
  }
  void _selectAll (bool selectOn) {
    for(final SelectionContact in selectionContactList){
      SelectionContact.isSelected = selectOn;
    }

  }


}
