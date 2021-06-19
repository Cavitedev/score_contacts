import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/sign_in/bloc.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/presentation/auth/sign_in/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
            create: (context) {
              final SignInBloc bloc = getIt<SignInBloc>();
              return bloc;
            },
            child: SignInForm(),
          ),
        ),
    );
  }
}
