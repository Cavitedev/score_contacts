part of 'add_contact_bloc.dart';

@freezed
abstract class AddContactState implements _$AddContactState {
  const AddContactState._();

  const factory AddContactState({
    required Contact contact,
    required bool isEditting,
    required bool isSaving,
    required Option<Either<ContactsFailure, Unit>> savingOrFailureOption,
  }) = _AddContactState;

  factory AddContactState.initial() => AddContactState(
      contact: Contact.empty(),
      isSaving: false,
      isEditting: false,
      savingOrFailureOption: none());
}
