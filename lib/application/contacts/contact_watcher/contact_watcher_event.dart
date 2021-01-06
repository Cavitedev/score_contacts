part of 'contact_watcher_bloc.dart';

@freezed
abstract class ContactWatcherEvent with _$ContactWatcherEvent {
  const factory ContactWatcherEvent.watchAllAlphabeticOrder() =
      _WatchAllAlphabeticOrder;

}
