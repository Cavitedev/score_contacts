import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:scorecontacts/domain/features/auth/auth_failures.dart';
import 'package:scorecontacts/domain/features/auth/i_auth_dao.dart';
import 'package:scorecontacts/injection.dart';
import './bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {

  IAuthDao authDao = getIt<IAuthDao>();

  @override
  SignInState get initialState => InitialSignInState();

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if(event is SignInWithGoogle){
      Either<AuthFailure,Unit> signInResult = await authDao.signInWithGoogle();
      yield signInResult.fold((authFailure) =>
       ErrorSignInState(authFailure: authFailure)
          , (_) => LoadedSignInState());
    }
  }
}
