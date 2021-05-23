part of 'view_contact_bloc.dart';

@freezed
class ViewContactEvent with _$ViewContactEvent {
  const factory ViewContactEvent.initialize(
      {required Contact contact, required String countryCode}) = _Initialize;

    const factory ViewContactEvent.callNumber(String number) = _CallNumber;

    const factory ViewContactEvent.sendMessage(String number) = _SendMessage;
    
    const factory ViewContactEvent.sendMessageThroughApp(String number, String app) = _SendMessageThroughApp;
    
}
