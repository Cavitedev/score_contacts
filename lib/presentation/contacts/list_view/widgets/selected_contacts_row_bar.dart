import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';

class SelectedContactsRowBar extends StatelessWidget {
  final List<SelectionContact> selectionContacts;

  const SelectedContactsRowBar({
    Key key,
    @required this.selectionContacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.close,
            size: 26,
          ),
          onPressed: () {
            context
                .read<ContactWatcherBloc>()
                .add(const ContactWatcherEvent.deselectAllContacts());
          },
        ),
        Expanded(
          child: Text(
            "Selected ${selectionContacts.selectedContactsAmount()} contacts",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.share,
            size: 26,
          ),
          onPressed: () {
            //TODO share
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.delete,
            size: 26,
          ),
          onPressed: () {
            context
                .read<ContactActorBloc>()
                .add(ContactActorEvent.delete(contactList: selectionContacts.selectedContacts().toContacts()));
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.more_vert,
            size: 26,
          ),
          onPressed: () {
            //TODO Menu Select all, add to label merge
          },
        ),
      ],
    );
  }
}
