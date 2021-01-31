import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/actor_overlay_progress_indicator.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_list_scaffold.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/critical_failure_display.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_progress_indicator_scaffold.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ContactWatcherBloc>(
            create: (context) => getIt<ContactWatcherBloc>()
              ..add(const ContactWatcherEvent.watchAll()),
          ),
          BlocProvider<ContactActorBloc>(
              create: (context) => getIt<ContactActorBloc>()),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                    unathenticated: (_) {
                      ExtendedNavigator.of(context).pushAndRemoveUntil(
                          Routes.signInPage, (route) => false);
                    },
                    orElse: () {});
              },
            ),
            BlocListener<ContactActorBloc, ContactActorState>(
              listener: (context, state) {
                state.maybeMap(
                    contactsFailure: (state) {
                      FlushbarHelper.createError(
                          duration: const Duration(seconds: 12),
                          message: state.failure.map(
                            insufficientPermissions: (_) =>
                                "Insufficient permissions",
                            notFound: (_) =>
                                "Updated contact not found, was it deleted from other device?",
                            unexpected: (_) =>
                                "UNEXPECTED ERROR, REPORT TO SUPPORT TEAM",
                            deniedContactPermissions: (_) =>
                                "We need system permissions to read contacts, ask again",
                            deniedPermanentlyContactPermissions: (_) =>
                                "Contact permissions are permanently denied. Allow them on app settings to use this function",
                            platformError: (_) =>
                                "Platform error, could not fetch data from system",
                          )).show(context);
                    },
                    deleteSuccessful: (state) => FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 4),
                          message:
                              "Successfully deleted ${state.numberContacts} ${state.numberContacts != 1 ? "Contacts" : "Contact"} ",
                        ).show(context),
                    loadSuccessful: (state) => FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 4),
                          message:
                              "Successfully loaded ${state.numberContacts} ${state.numberContacts != 1 ? "Contacts" : "Contact"} ",
                        ).show(context),
                    orElse: () {});
              },
            ),
          ],
          child: BlocBuilder<ContactWatcherBloc, ContactWatcherState>(
              builder: (context, state) => state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) =>
                        const CircularProgressIndicatorScaffold(),
                    loadSuccess: (state) {
                      return Stack(
                        children: [
                          ContactsListScaffold(
                            stateValues: state.stateValues,
                          ),
                          ActorOverlayProgressIndicator(),
                        ],
                      );
                    },
                    loadFailure: (state) =>
                        CriticalFailureDisplay(failure: state.failure),
                  )),
        ));
  }
}


