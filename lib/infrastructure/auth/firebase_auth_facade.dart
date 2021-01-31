import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as _fbAuth;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/auth/auth_failures.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/user/user_data.dart';

import '../core/firebase_user_helper.dart';

@Injectable(as: IAuthFacade)
@lazySingleton
class FirebaseAuthFacade implements IAuthFacade {
  final GoogleSignIn googleSignIn;
  final _fbAuth.FirebaseAuth firebaseAuth;

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
            "google_cancelled"));
      }
      final GoogleSignInAuthentication authentication =
      await googleAccount.authentication;
      final _fbAuth.AuthCredential credential =
          _fbAuth.GoogleAuthProvider.credential(
              idToken: authentication.idToken,
              accessToken: authentication.accessToken);
      await firebaseAuth.signInWithCredential(credential);
      return right(unit);
    } on PlatformException {
      return left(const DatabaseAuthFailure("error_database"));
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
