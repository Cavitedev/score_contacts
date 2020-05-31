import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/sign_in/bloc.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is LoadedSignInState) {
          Navigator.pushReplacementNamed(context, Routes.contactList);
        } else if (state is ErrorSignInState) {
          FlushbarHelper.createError(
                  message: state.authFailure.message,
                  duration: Duration(seconds: 5))
              .show(context);
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: Text("Sign IN")),
            Text(
              "📝",
              style: TextStyle(fontSize: 140),
            ),
            const SizedBox(
              height: 20,
            ),
            state is ErrorSignInState?
            Text(state.authFailure.message)
                : const SizedBox(),
            Spacer(),

            FlatButton.icon(
              onPressed: () {
                context.bloc<SignInBloc>().add(SignInWithGoogle());
              },
              icon: Icon(Icons.email),
              label: Text("Sign In with Google"),
            ),

            const SizedBox(
              height: 60,
            ),
          ],
        );
      },
    );
  }
}
