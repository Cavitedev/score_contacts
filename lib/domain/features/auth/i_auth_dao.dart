import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';

abstract class IAuthDao{
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}