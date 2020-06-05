import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_state.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is UnauthenticatedAuthState) {
          ExtendedNavigator.of(context).pushReplacementNamed(Routes.signInPage);
        } else if (state is AuthenticatedAuthState) {
          ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.contactList);
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
