part of 'view_contact_bloc.dart';

@freezed
class ViewContactEvent with _$ViewContactEvent {

  const factory ViewContactEvent.initialize(
      {required Contact contact, required String countryCode}) = _Initialize;


  const factory ViewContactEvent.callNumber(String number) = _CallNumber;

  const factory ViewContactEvent.sendMessage(String number) = _SendMessage;

  const factory ViewContactEvent.sendMessageThroughApp({
    required Phone phone,
    required String region,
    required PhoneAppMessage app,
  }) = _SendMessageThroughApp;

  const factory ViewContactEvent.sendMail(String mail) = _SendMail;
}
