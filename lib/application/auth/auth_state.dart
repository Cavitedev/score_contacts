part of 'auth_bloc.dart';

// Distintos estados que puede estar la autenticación
@freezed
class AuthState with _$AuthState{
    const factory AuthState.initial() = _Initial;
    const factory AuthState.authenticated() = _Authenticated;
    const factory AuthState.unathenticated() = _Unathenticated;
      }


