import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/auth/auth_failures.dart';
import 'package:scorecontacts/domain/user/user_data.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();

  Option<User> getSignedUser();
}
