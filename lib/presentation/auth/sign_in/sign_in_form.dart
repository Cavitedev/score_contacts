import 'dart:math';

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
        return LayoutBuilder(
          builder: (context, constrains) => FooterLayout(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                  Text(
                    AppLocalization.of(context).translate("sign_in"),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: min(MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height) /
                        2,
                    child: Image.asset(
                      "assets/icons/app_logo.png",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (state is ErrorSignInState) Text(state.authFailure.message),
                  if (state is SubmittingSignInState) const LinearProgressIndicator(),
                ],
              ),
            ),
            footer: Container(
              padding: const EdgeInsets.symmetric(horizontal: Constants.extendedPadding),
              margin: const EdgeInsets.only(bottom: 20),
              height: 50,
              alignment: Alignment.topCenter,
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
          ),
        );
      },
    );
  }
}

//https://stackoverflow.com/a/54028043/14559140
class FooterLayout extends StatelessWidget {
  const FooterLayout({
    Key? key,
    required this.body,
    required this.footer,
  }) : super(key: key);

  final Widget body;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: _FooterLayoutDelegate(MediaQuery.of(context).viewInsets),
      children: <Widget>[
        LayoutId(
          id: _FooterLayout.body,
          child: body,
        ),
        LayoutId(
          id: _FooterLayout.footer,
          child: footer,
        ),
      ],
    );
  }
}

enum _FooterLayout {
  footer,
  body,
}

class _FooterLayoutDelegate extends MultiChildLayoutDelegate {
  final EdgeInsets viewInsets;

  _FooterLayoutDelegate(this.viewInsets);

  @override
  void performLayout(Size size) {
    // ignore: parameter_assignments
    size = Size(size.width, size.height + viewInsets.bottom);
    final footer = layoutChild(_FooterLayout.footer, BoxConstraints.loose(size));

    final bodyConstraints = BoxConstraints.tightFor(
      height: size.height - max(footer.height, viewInsets.bottom),
      width: size.width,
    );

    final body = layoutChild(_FooterLayout.body, bodyConstraints);

    positionChild(_FooterLayout.body, Offset.zero);
    positionChild(_FooterLayout.footer, Offset(0, body.height));
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
