part of 'contact_actor_bloc.dart';

@freezed
abstract class ContactActorEvent with _$ContactActorEvent {
  const factory ContactActorEvent.delete({Contact contact}) = _Delete;

  const factory ContactActorEvent.deleteSelectedContacts() =
      _DeleteSelectedContacts;

  const factory ContactActorEvent.toggleSelectionContact(Contact contact) =
      _ToggleSelectionContact;

  const factory ContactActorEvent.deselectAllContacts() = _DeselectAllContacts;
  
  const factory ContactActorEvent.selectAllContacts(Set<Contact> contactSet) = _SelectAllContacts;

  const factory ContactActorEvent.loadContactsFromSystem() = _LoadContactsFromSystem;
}
