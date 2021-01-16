part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherEvent with _$ContactWatcherEvent {
const factory ContactWatcherEvent.contactsReceived(Either<ContactsFailure, List<Contact>> contactsEither) = _ContactsReceived;
  const factory ContactWatcherEvent.watchAll() =
      _WatchAll;
  const factory ContactWatcherEvent.searchContact(String searchString) = _SearchContact;

}
