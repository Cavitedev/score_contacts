// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scorecontacts/infrastructure/features/auth/firebase_auth_dao.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';
import 'package:scorecontacts/application/auth/sign_in/sign_in_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerFactory<AddContactBloc>(() => AddContactBloc());
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<IAuthDao>(() => FirebaseAuthDao(
      googleSignIn: g<GoogleSignIn>(), firebaseAuth: g<FirebaseAuth>()));
  g.registerFactory<SignInBloc>(() => SignInBloc(authDao: g<IAuthDao>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthDao>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
