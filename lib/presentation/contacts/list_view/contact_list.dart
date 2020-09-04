import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/injection.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_list_scaffold.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/critical_failure_display.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactWatcherBloc>(
        create: (context) => getIt<ContactWatcherBloc>()
          ..add(const ContactWatcherEvent.watchAllAlphabeticOrder()),
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
                )));
  }
}
