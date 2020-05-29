import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';


@lazySingleton
// ignore: deprecated_member_use
@RegisterAs(IAuthDao)
class FirebaseAuthDao implements IAuthDao {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;

  FirebaseAuthDao({
    @required this.googleSignIn,
    @required this.firebaseAuth,
  });

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      GoogleSignInAccount googleAccount = await googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const CancelledByUserAuthFailure(
            "Google sign in has been cancelled"));
      }
      GoogleSignInAuthentication authentication =
          await googleAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.getCredential(
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
