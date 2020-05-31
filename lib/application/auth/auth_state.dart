import 'package:meta/meta.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class InitialAuthState extends AuthState {
  const InitialAuthState();
}

class AuthenticatedAuthState extends AuthState {
  const AuthenticatedAuthState();
}

class UnauthenticatedAuthState extends AuthState {
  const UnauthenticatedAuthState();
}
