part of 'view_contact_bloc.dart';

@freezed
class ViewContactEvent with _$ViewContactEvent {
  const factory ViewContactEvent.initialize(
      {required Contact contact, required String countryCode}) = _Initialize;
}
