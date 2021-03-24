part of 'contact_actor_bloc.dart';

@freezed
abstract class ContactActorEvent with _$ContactActorEvent {
  const factory ContactActorEvent.delete({required List<Contact> contactList}) = _Delete;

  const factory ContactActorEvent.loadContactsFromSystem() = _LoadContactsFromSystem;
}
