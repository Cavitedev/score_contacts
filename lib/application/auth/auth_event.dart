import 'package:meta/meta.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class GetUser extends AuthEvent {
  const GetUser();
}

class SignOut extends AuthEvent {
  const SignOut();
}
