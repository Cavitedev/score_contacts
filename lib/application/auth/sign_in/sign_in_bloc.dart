import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/auth/auth_failures.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';

import './bloc.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade authDao;

  SignInBloc({required this.authDao}) : super(const InitialSignInState());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is SignInWithGoogle) {
      yield const SubmittingSignInState();
      final Either<AuthFailure, Unit> signInResult =
          await authDao.signInWithGoogle();
      yield signInResult.fold(
              (authFailure) => ErrorSignInState(authFailure: authFailure),
              (_) => const LoadedSignInState());
    }
  }
}
