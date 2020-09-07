// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/contacts/add_contact/add_contact_bloc.dart';
import 'application/auth/auth_bloc.dart';
import 'application/contacts/contact_actor/contact_actor_bloc.dart';
import 'application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'infrastructure/contacts/contacts_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/user/contacts_data/i_contact_repository.dart';
import 'application/auth/sign_in/sign_in_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAuthFacade>(() => FirebaseAuthFacade(
      googleSignIn: get<GoogleSignIn>(), firebaseAuth: get<FirebaseAuth>()));
  gh.lazySingleton<IContactsRepository>(
      () => ContactsRepository(get<FirebaseFirestore>()));
  gh.factory<SignInBloc>(() => SignInBloc(authDao: get<IAuthFacade>()));
  gh.factory<AddContactBloc>(() => AddContactBloc(get<IContactsRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<ContactActorBloc>(
      () => ContactActorBloc(get<IContactsRepository>()));
  gh.factory<ContactWatcherBloc>(
      () => ContactWatcherBloc(get<IContactsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
