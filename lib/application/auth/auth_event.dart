part of 'auth_bloc.dart';

// Eventos aceptados en AuthBloc
@freezed
class AuthEvent with _$AuthEvent{
  const factory AuthEvent.getUser() = _GetUser;

  const factory AuthEvent.signOut() = _SignOut;
}
