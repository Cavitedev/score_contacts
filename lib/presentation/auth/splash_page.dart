import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {

        state.maybeMap(
          unathenticated: (e) {
            context.router.replace(const r.SignInPageRoute());
          },
          authenticated: (e) {
            context.router.replace(const r.ContactListRoute());
          },
          orElse: () {},
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class Routes {
}
