part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherState with _$ContactWatcherState {
  const factory ContactWatcherState.initial() = _Initial;

  const factory ContactWatcherState.loadInProgress() = _LoadInProgress;

  const factory ContactWatcherState.loadSuccess(
      List<SelectionContact> selectedContacts,
      Filter filter) = _LoadSuccess;

  const factory ContactWatcherState.loadFailure(ContactsFailure failure) =
      _LoadFailure;
}
