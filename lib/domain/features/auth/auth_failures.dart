import 'package:scorecontacts/domain/core/failure.dart';

class AuthFailure extends Failure {
  const AuthFailure(String message) : super(message);
}

class CancelledByUserAuthFailure extends AuthFailure {
  const CancelledByUserAuthFailure(String message) : super(message);
}

class DatabaseAuthFailure extends AuthFailure {
  const DatabaseAuthFailure(String message) : super(message);
}
