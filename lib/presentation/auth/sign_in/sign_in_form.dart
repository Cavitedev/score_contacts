import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/sign_in/bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is LoadedSignInState) {
          context.read<AuthBloc>().add(const AuthEvent.getUser());
          ExtendedNavigator.of(context).popAndPush(Routes.contactList);
        } else if (state is ErrorSignInState) {
          FlushbarHelper.createError(message: AppLocalization.of(context).translate(state.authFailure.message), duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text(
              AppLocalization.of(context).translate("sign_in"),
              style: Theme.of(context).textTheme.headline4,
            )),
            const Text(
              "📝",
              style: TextStyle(fontSize: 140),
            ),
            const SizedBox(
              height: 20,
            ),
            if (state is ErrorSignInState) ...[Text(state.authFailure.message)],
            if (state is SubmittingSignInState) ...[
              const LinearProgressIndicator(
                value: null,
              )
            ],
            const Spacer(),
            RaisedButton.icon(
              onPressed: () {
                context.read<SignInBloc>().add(SignInWithGoogle());
              },
              color: Theme.of(context).buttonColor,
              icon: Icon(Icons.email, color: Theme.of(context).focusColor),
              label: Text(
                AppLocalization.of(context).translate("sign_in_google"),
                style: Theme.of(context).textTheme.button,
              ),
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
