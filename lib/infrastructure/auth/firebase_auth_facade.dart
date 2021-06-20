import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as _fbAuth;
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
    required this.googleSignIn,
    required this.firebaseAuth,
  });

  @override
  Option<User> getSignedUser() =>
      optionOf(firebaseAuth.currentUser?.toDomain());

  /// Método asíncrono de inicio de sesión con Google que devuelve éxito o fallo
  /// y actualiza el usuario actual de Firebase
  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleAccount = await googleSignIn.signIn(); //Intenta entrar
      if (googleAccount == null) {
        return left(const CancelledByUserAuthFailure("google_cancelled")); //Devuelve que ha sido cancelado
      }
      final GoogleSignInAuthentication authentication =
          await googleAccount.authentication; // Obtener datos de la autentificación recibida
      final _fbAuth.AuthCredential credential =
          _fbAuth.GoogleAuthProvider.credential(
              idToken: authentication.idToken,
              accessToken: authentication.accessToken); // Obtener credenciales necesarios
      await firebaseAuth.signInWithCredential(credential); //Entrar a Firebase con las credenciales
      return right(unit); // Éxito
    } on PlatformException catch (e) {
      if (e.code == "popup_closed_by_user") { //Excepción de cancelado
        return left(const CancelledByUserAuthFailure("google_cancelled"));
      }
      // Error genérico
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
