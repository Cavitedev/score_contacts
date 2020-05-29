import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/sign_in/bloc.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/sign_in/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign IN"),

      ),
      body: BlocProvider(
        create: (context) {
          SignInBloc bloc = getIt<SignInBloc>();
          print(bloc);
          return bloc;
        },
        child: SignInForm(),
      ),
    );
  }
}
