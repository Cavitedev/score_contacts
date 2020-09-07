import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/auth/auth_state.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_list_scaffold.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/critical_failure_display.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ContactWatcherBloc>(
            create: (context) => getIt<ContactWatcherBloc>()
              ..add(const ContactWatcherEvent.watchAllAlphabeticOrder()),
          ),
          BlocProvider<ContactActorBloc>(
              create: (context) => getIt<ContactActorBloc>()),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is UnauthenticatedAuthState) {
                  ExtendedNavigator.of(context).pushSignInPage();
                }
              },
            ),
            BlocListener<ContactActorBloc, ContactActorState>(
              listener: (context, state) {
                state.maybeMap(
                    deleteFailure: (state) {
                      FlushbarHelper.createError(
                          duration: const Duration(seconds: 6),
                          message: state.failure.map(
                            insufficientPermissions: (_) =>
                                "Insufficient permissions",
                            notFound: (_) =>
                                "Updated contact not found, was it deleted from other device?",
                            unexpected: (_) =>
                                "UNEXPECTED ERROR, REPORT TO SUPPORT TEAM",
                          )).show(context);
                    },
                    orElse: () {});
              },
            )
          ],
          child: BlocBuilder<ContactWatcherBloc, ContactWatcherState>(
              builder: (context, state) => state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (state) =>
                        ContactsListScaffold(contacts: state.contacts),
                    loadFailure: (state) =>
                        CriticalFailureDisplay(failure: state.failure),
                  )),
        ));
  }
}
