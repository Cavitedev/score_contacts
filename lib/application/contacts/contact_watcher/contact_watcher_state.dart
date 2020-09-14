part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherState with _$ContactWatcherState {
  const factory ContactWatcherState.initial() = _Initial;

  const factory ContactWatcherState.loadInProgress() = _LoadInProgress;

  const factory ContactWatcherState.loadSuccess(
      List<SelectedContact> selectedContacts) = _LoadSuccess;

  const factory ContactWatcherState.loadFailure(ContactsFailure failure) =
      _LoadFailure;
}
