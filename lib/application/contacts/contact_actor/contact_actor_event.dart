part of 'contact_actor_bloc.dart';

@freezed
class ContactActorEvent with _$ContactActorEvent{
  const factory ContactActorEvent.delete({required List<Contact> contactList}) = _Delete;

  const factory ContactActorEvent.loadContactsFromSystem() = _LoadContactsFromSystem;

  const factory ContactActorEvent.callContact(Contact contact) = _CallNumber;


}
