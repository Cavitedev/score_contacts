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
        title: Text("Sign in"),
      ),
        body: BlocProvider(
       create: (context) => getIt<SignInBloc>(),
    child: SignInForm(),
    ),
    );
  }
}
