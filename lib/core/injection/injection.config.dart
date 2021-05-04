// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_bloc.dart' as _i14;
import '../../application/auth/sign_in/sign_in_bloc.dart' as _i12;
import '../../application/contacts/add_contact/add_contact_bloc.dart' as _i13;
import '../../application/contacts/contact_actor/contact_actor_bloc.dart'
    as _i15;
import '../../application/contacts/contact_watcher/contact_watcher_bloc.dart'
    as _i16;
import '../../application/core/app_manager_cubit.dart' as _i3;
import '../../domain/auth/i_auth_facade.dart' as _i8;
import '../../domain/user/contacts_data/i_contact_repository.dart' as _i10;
import '../../infrastructure/auth/firebase_auth_facade.dart' as _i9;
import '../../infrastructure/contacts/contacts_repository.dart' as _i11;
import '../../infrastructure/core/firebase_injectable_module.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AppManagerCubit>(() => _i3.AppManagerCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firestorage);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      googleSignIn: get<_i7.GoogleSignIn>(),
      firebaseAuth: get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i10.IContactsRepository>(() => _i11.ContactsRepository(
      get<_i5.FirebaseFirestore>(),
      get<_i6.FirebaseStorage>(),
      get<_i8.IAuthFacade>()));
  gh.factory<_i12.SignInBloc>(
      () => _i12.SignInBloc(authDao: get<_i8.IAuthFacade>()));
  gh.factory<_i13.AddContactBloc>(
      () => _i13.AddContactBloc(get<_i10.IContactsRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i15.ContactActorBloc>(
      () => _i15.ContactActorBloc(get<_i10.IContactsRepository>()));
  gh.factory<_i16.ContactWatcherBloc>(
      () => _i16.ContactWatcherBloc(get<_i10.IContactsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
