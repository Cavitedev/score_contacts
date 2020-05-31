import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';
import 'package:scorecontacts/domain/features/user/user_Data.dart';

import './bloc.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthDao authDao;

  AuthBloc(this.authDao);

  @override
  AuthState get initialState => InitialAuthState();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is GetUser) {
      Option<User> user = await authDao.getSignedUser();
      yield user.fold(
        () => const UnauthenticatedAuthState(),
        (_) => const AuthenticatedAuthState(),
      );
    } else if (event is SignOut) {
      await authDao.signOut();
      yield const UnauthenticatedAuthState();
    }
  }
}
