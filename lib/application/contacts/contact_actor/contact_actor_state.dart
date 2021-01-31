part of 'contact_actor_bloc.dart';

@freezed
abstract class ContactActorState with _$ContactActorState {
  const factory ContactActorState.initial() = _Initial;

  const factory ContactActorState.actionInProgress(ContactsLoading loadingMsg) = _ActionInProgress;

  const factory ContactActorState.deleteSuccessful(int numberContacts) = _DeleteSuccessful;

  const factory ContactActorState.loadSuccessful(int numberContacts) = _LoadSuccessful;

  const factory ContactActorState.contactsFailure(ContactsFailure failure) =
      _DeleteFailure;
}
