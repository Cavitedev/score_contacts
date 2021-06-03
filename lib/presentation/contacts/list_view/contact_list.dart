import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/call/call_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/actor_overlay_progress_indicator.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_list_scaffold.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/critical_failure_display.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_progress_indicator_scaffold.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
          BlocProvider<ContactActorBloc>(
              create: (context) {
                context.read<ContactWatcherBloc>().add(const ContactWatcherEvent.watchAll());
                return getIt<ContactActorBloc>();
              }
        ,
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                    unathenticated: (_) {
                      context.router.pushAndPopUntil(
                        const r.SignInPageRoute(),
                        predicate: (route) => false,
                      );
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
                              message: getContactsFailureMessage(
                                  context, state.failure))
                          .show(context);
                    },
                    deleteSuccessful: (state) => FlushbarHelper.createSuccess(
                            duration: const Duration(seconds: 4),
                            message: AppLocalization.of(context).translate(
                                state.numberContacts != 1
                                    ? "success_delete_contacts_plural"
                                    : "success_delete_contacts_single",
                                args: [state.numberContacts.toString()]))
                        .show(context),
                    loadSuccessful: (state) => FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 4),
                          message: AppLocalization.of(context).translate(
                              state.numberContacts != 1
                                  ? "success_load_contacts_plural"
                                  : "success_load_contacts_single",
                              args: [state.numberContacts.toString()]),
                        ).show(context),
                    callSuccesful: (state) => FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 4),
                          message: AppLocalization.of(context).translate(
                            "success_call",
                            args: [state.number],
                          ),
                        ).show(context),
                    callFailure: (state) =>  FlushbarHelper.createError(
                            duration: const Duration(seconds: 12),
                            message: getCallFailureMessage(context, state.failure),
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
