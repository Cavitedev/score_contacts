import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';
import 'package:scorecontacts/domain/features/user/user_data.dart';

import 'firebase_user_extension.dart';

@Injectable(as: IAuthDao)
@lazySingleton
class FirebaseAuthFacade implements IAuthDao {
  final GoogleSignIn googleSignIn;
  final fbAuth.FirebaseAuth firebaseAuth;

  FirebaseAuthFacade({
    @required this.googleSignIn,
    @required this.firebaseAuth,
  });

  @override
  Option<User> getSignedUser() =>
      optionOf(firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleAccount = await googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const CancelledByUserAuthFailure(
            "Google sign in has been cancelled"));
      }
      final GoogleSignInAuthentication authentication =
      await googleAccount.authentication;
      final fbAuth.AuthCredential credential = fbAuth.GoogleAuthProvider
          .credential(
          idToken: authentication.idToken,
          accessToken: authentication.accessToken);
      await firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on PlatformException {
      return left(const DatabaseAuthFailure("Error on database"));
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([
      googleSignIn.signOut(),
      firebaseAuth.signOut(),
    ]);
  }
}
