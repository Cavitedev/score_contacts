import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/sign_in/bloc.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is LoadedSignInState) {
          context.read<AuthBloc>().add(const AuthEvent.getUser());
          context.router.popAndPush(const r.ContactListRoute());
        } else if (state is ErrorSignInState) {
          FlushbarHelper.createError(
                  message:
                      AppLocalization.of(context).translate(state.authFailure.message),
                  duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text(
              AppLocalization.of(context).translate("sign_in"),
              style: Theme.of(context).textTheme.headline3,
            )),
            const Text(
              "📝",
              style: TextStyle(fontSize: 140),
            ),
            const SizedBox(
              height: 20,
            ),
            if (state is ErrorSignInState) ...[Text(state.authFailure.message)],
            if (state is SubmittingSignInState) ...[const LinearProgressIndicator()],
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: Constants.extendedPadding),
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(4)
                ),
                onPressed: () {
                  context.read<SignInBloc>().add(SignInWithGoogle());
                },
                child: Row(
                  children: [
                    Container(
                      width: 46,
                      color: Colors.white,
                      child: Image.asset(
                        "assets/icons/brands/google-icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      AppLocalization.of(context).translate("sign_in_google"),
                      style: Theme.of(context).textTheme.button,
                    )
                  ],
                ),
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
