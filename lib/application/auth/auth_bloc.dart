import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/user/user_data.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authDao;

  AuthBloc(this.authDao) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      getUser: (e) async* {
          final Option<User> user = authDao.getSignedUser();
          yield user.fold(
            () => const AuthState.unathenticated(),
            (_) => const AuthState.authenticated(),
          );
      },
      signOut: (e) async* {
          await ExtendedNavigator.of(e.context).pushAndRemoveUntil(Routes.signInPage, (route) => false);
          await authDao.signOut();
          yield const AuthState.unathenticated();
      },
    );
  }
}
