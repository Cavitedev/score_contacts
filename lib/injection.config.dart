// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in/sign_in_bloc.dart';
import 'application/contacts/add_contact/add_contact_bloc.dart';
import 'domain/features/auth/i_auth_dao.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<AddContactBloc>(() => AddContactBloc());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAuthDao>(() => FirebaseAuthFacade(
      googleSignIn: get<GoogleSignIn>(), firebaseAuth: get<FirebaseAuth>()));
  gh.factory<SignInBloc>(() => SignInBloc(authDao: get<IAuthDao>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthDao>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
