part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getUser() = _GetUser;

  const factory AuthEvent.signOut() = _SignOut;
}
