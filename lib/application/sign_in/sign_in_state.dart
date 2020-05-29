import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';

@immutable
abstract class SignInState {}

class InitialSignInState extends SignInState {}

class LoadedSignInState extends SignInState {}

class ErrorSignInState extends SignInState{
  final AuthFailure authFailure;

  ErrorSignInState({@required this.authFailure});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorSignInState &&
          runtimeType == other.runtimeType &&
          authFailure == other.authFailure;

  @override
  int get hashCode => authFailure.hashCode;
}