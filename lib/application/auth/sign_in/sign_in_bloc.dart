import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';

import './bloc.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {

  final IAuthDao authDao;

  SignInBloc({this.authDao});

  @override
  SignInState get initialState => const InitialSignInState();

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if(event is SignInWithGoogle){
      final Either<AuthFailure, Unit> signInResult =
          await authDao.signInWithGoogle();
      yield signInResult.fold(
          (authFailure) => ErrorSignInState(authFailure: authFailure),
          (_) => const LoadedSignInState());
    }
  }
}
