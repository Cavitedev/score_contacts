part of 'view_contact_bloc.dart';

@freezed
class ViewContactState with _$ViewContactState {
  const ViewContactState._();

  const factory ViewContactState({
    required Contact contact,
    required ViewContactUnionState unionState,
  }) = _ViewContactState;

  factory ViewContactState.initial() => ViewContactState(
        contact: Contact.empty(),
        unionState: const ViewContactUnionState.initial(),
      );
}

@freezed
class ViewContactUnionState with _$ViewContactUnionState {
  const factory ViewContactUnionState.initial() = _Initial;

  const factory ViewContactUnionState.actionInProgress(
      ContactsLoading loadingMsg) = _ActionInProgress;

  const factory ViewContactUnionState.callSuccessful(String number) =
      _CallSuccessful;

  const factory ViewContactUnionState.callFailure(CallFailure failure) =
      _CallFailure;

  const factory ViewContactUnionState.messageFailure(String number) =
      _MessageFailure;
  
  const factory ViewContactUnionState.mailFailure(String mail) = _MailFailure;


    const factory ViewContactUnionState.appMessageFailure({
    required String number,
    required PhoneAppMessage appMessage,
  }) = _AppMessageFailure;
}
