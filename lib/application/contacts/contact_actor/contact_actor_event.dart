part of 'contact_actor_bloc.dart';

@freezed
abstract class ContactActorEvent with _$ContactActorEvent {
  const factory ContactActorEvent.delete(Contact contact) = _Delete;
}
