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
          context.router.replace(const r.ContactListRoute());
        } else if (state is ErrorSignInState) {
          FlushbarHelper.createError(
                  message:
                      AppLocalization.of(context).translate(state.authFailure.message),
                  duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      builder: (context, state) => CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              AppLocalization.of(context).translate("welcome"),
              style: Theme.of(context).textTheme.headline1,
            )),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                AppLocalization.of(context).translate("sign_in"),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              height: 250,
              child: Image.asset(
                "assets/icons/app_logo.png",
              ),
            ),
            if (state is ErrorSignInState) Center(child: Text(state.authFailure.message)),
            if (state is SubmittingSignInState) const LinearProgressIndicator(),
            const SizedBox(
              height: 20,
            ),
          ])),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding:
                  const EdgeInsets.symmetric(horizontal: Constants.extendedPadding),
              height: 50,
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(4)),
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
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Colors.blue[50]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
