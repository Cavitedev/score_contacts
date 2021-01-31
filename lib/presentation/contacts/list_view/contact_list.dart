import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/auth/auth_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
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
            create: (context) =>
            getIt<ContactWatcherBloc>()
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
                          message: getContactsFailureMessage(
                              context, state.failure))
                          .show(context);
                    },
                    deleteSuccessful: (state) =>
                        FlushbarHelper.createSuccess(
                            duration: const Duration(seconds: 4),
                            message: AppLocalization.of(context)
                                .translate(state.numberContacts != 1 ? "success_delete_contacts_plural" :
                                "success_delete_contacts_single",
                                args: [state.numberContacts.toString()])).show(
                            context),
                    loadSuccessful: (state) =>
                        FlushbarHelper.createSuccess(
                          duration: const Duration(seconds: 4),
                          message:
                          AppLocalization.of(context)
                              .translate(state.numberContacts != 1 ? "success_load_contacts_plural" :
                          "success_load_contacts_single",
                              args: [state.numberContacts.toString()]),
                        ).show(context),
                    orElse: () {});
              },
            ),
          ],
          child: BlocBuilder<ContactWatcherBloc, ContactWatcherState>(
              builder: (context, state) =>
                  state.map(
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
