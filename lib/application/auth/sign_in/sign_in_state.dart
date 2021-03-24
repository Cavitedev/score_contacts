import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/auth/auth_failures.dart';

@immutable
abstract class SignInState {
  const SignInState();
}

class InitialSignInState extends SignInState {
  const InitialSignInState();
}

class LoadedSignInState extends SignInState {
  const LoadedSignInState();
}

class SubmittingSignInState extends SignInState {
  const SubmittingSignInState();
}

class ErrorSignInState extends SignInState {
  final AuthFailure authFailure;

  const ErrorSignInState({required this.authFailure});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorSignInState &&
          runtimeType == other.runtimeType &&
          authFailure == other.authFailure;

  @override
  int get hashCode => authFailure.hashCode;
}