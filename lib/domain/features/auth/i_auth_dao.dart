import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';
import 'package:scorecontacts/domain/features/user/user_data.dart';

abstract class IAuthDao{
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();

  Option<User> getSignedUser();
}