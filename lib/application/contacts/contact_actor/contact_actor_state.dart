part of 'contact_actor_bloc.dart';

@freezed
abstract class ContactActorState with _$ContactActorState {
  const factory ContactActorState.initial() = _Initial;

  const factory ContactActorState.actionInProgress() = _ActionInProgress;

  const factory ContactActorState.deleteSuccessful() = _DeleteSuccessful;

  const factory ContactActorState.selectContacts(
      Set<Contact> selectedContacts) = _SelectContacts;

  const factory ContactActorState.deleteFailure(ContactsFailure failure) =
      _DeleteFailure;
}
