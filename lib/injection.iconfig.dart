// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:scorecontacts/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scorecontacts/application/sign_in/sign_in_bloc.dart';
import 'package:scorecontacts/infrastructure/features/auth/firebase_auth_dao.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<SignInBloc>(() => SignInBloc());
  g.registerLazySingleton<FirebaseAuthDao>(() => FirebaseAuthDao(
      googleSignIn: g<GoogleSignIn>(), firebaseAuth: g<FirebaseAuth>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
