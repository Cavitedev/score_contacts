// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_bloc.dart' as _i12;
import '../../application/auth/sign_in/sign_in_bloc.dart' as _i11;
import '../../application/contacts/add_contact/add_contact_bloc.dart' as _i17;
import '../../application/contacts/contact_actor/contact_actor_bloc.dart'
    as _i18;
import '../../application/contacts/contact_watcher/contact_watcher_bloc.dart'
    as _i19;
import '../../application/contacts/view_contact/view_contact_bloc.dart' as _i16;
import '../../application/core/app_manager_cubit.dart' as _i4;
import '../../application/diary/add_diary_entry/add_diary_entry_bloc.dart'
    as _i3;
import '../../domain/auth/i_auth_facade.dart' as _i9;
import '../../domain/user/contacts_data/i_contact_repository.dart' as _i14;
import '../../infrastructure/auth/firebase_auth_facade.dart' as _i10;
import '../../infrastructure/contacts/contacts_image_storage.dart' as _i13;
import '../../infrastructure/contacts/contacts_repository.dart' as _i15;
import '../../infrastructure/core/firebase_injectable_module.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AddDiaryEntryBloc>(() => _i3.AddDiaryEntryBloc());
  gh.factory<_i4.AppManagerCubit>(() => _i4.AppManagerCubit());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.FirebaseStorage>(
      () => firebaseInjectableModule.firestorage);
  gh.lazySingleton<_i8.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      googleSignIn: get<_i8.GoogleSignIn>(),
      firebaseAuth: get<_i5.FirebaseAuth>()));
  gh.factory<_i11.SignInBloc>(
      () => _i11.SignInBloc(authDao: get<_i9.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i13.ContactsImageStorage>(() => _i13.ContactsImageStorage(
      get<_i7.FirebaseStorage>(), get<_i9.IAuthFacade>()));
  gh.lazySingleton<_i14.IContactsRepository>(() => _i15.ContactsRepository(
      get<_i6.FirebaseFirestore>(), get<_i13.ContactsImageStorage>()));
  gh.factory<_i16.ViewContactBloc>(
      () => _i16.ViewContactBloc(get<_i14.IContactsRepository>()));
  gh.factory<_i17.AddContactBloc>(
      () => _i17.AddContactBloc(get<_i14.IContactsRepository>()));
  gh.factory<_i18.ContactActorBloc>(
      () => _i18.ContactActorBloc(get<_i14.IContactsRepository>()));
  gh.factory<_i19.ContactWatcherBloc>(
      () => _i19.ContactWatcherBloc(get<_i14.IContactsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
