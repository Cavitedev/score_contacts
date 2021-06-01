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
import '../../application/contacts/add_contact/add_contact_bloc.dart' as _i19;
import '../../application/contacts/contact_actor/contact_actor_bloc.dart'
    as _i20;
import '../../application/contacts/contact_watcher/contact_watcher_bloc.dart'
    as _i21;
import '../../application/contacts/view_contact/view_contact_bloc.dart' as _i18;
import '../../application/core/app_manager_cubit.dart' as _i3;
import '../../application/diary/add_diary_entry/add_diary_entry_bloc.dart'
    as _i13;
import '../../domain/auth/i_auth_facade.dart' as _i8;
import '../../domain/user/contacts_data/i_contact_repository.dart' as _i16;
import '../../domain/user/diary/i_diary_entry_repository.dart' as _i10;
import '../../infrastructure/auth/firebase_auth_facade.dart' as _i9;
import '../../infrastructure/contacts/contacts_image_storage.dart' as _i15;
import '../../infrastructure/contacts/contacts_repository.dart' as _i17;
import '../../infrastructure/core/firebase_injectable_module.dart' as _i22;
import '../../infrastructure/diary/diary_entry_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.IDiaryEntryRepository>(
      () => _i11.DiaryEntryRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i12.SignInBloc>(
      () => _i12.SignInBloc(authDao: get<_i8.IAuthFacade>()));
  gh.factory<_i13.AddDiaryEntryBloc>(
      () => _i13.AddDiaryEntryBloc(get<_i10.IDiaryEntryRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i15.ContactsImageStorage>(() => _i15.ContactsImageStorage(
      get<_i6.FirebaseStorage>(), get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i16.IContactsRepository>(() => _i17.ContactsRepository(
      get<_i5.FirebaseFirestore>(), get<_i15.ContactsImageStorage>()));
  gh.factory<_i18.ViewContactBloc>(
      () => _i18.ViewContactBloc(get<_i16.IContactsRepository>()));
  gh.factory<_i19.AddContactBloc>(
      () => _i19.AddContactBloc(get<_i16.IContactsRepository>()));
  gh.factory<_i20.ContactActorBloc>(
      () => _i20.ContactActorBloc(get<_i16.IContactsRepository>()));
  gh.factory<_i21.ContactWatcherBloc>(
      () => _i21.ContactWatcherBloc(get<_i16.IContactsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
