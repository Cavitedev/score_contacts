import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/user/user_data.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authDao; // inyecta la dependencia

  AuthBloc(this.authDao) : super(const AuthState.initial()); // estado por defecto

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      getUser: (e) async* {
          // Primer evento que se puede llamar
          final Option<User> user = authDao.getSignedUser();
          yield user.fold( // Distintos estados según como se encuentre el usuario
            () => const AuthState.unathenticated(),
            (_) => const AuthState.authenticated(),
          );
      },
      signOut: (e) async* { // segundo evento
          await authDao.signOut();
          yield const AuthState.unathenticated();
      },
    );
  }
}
