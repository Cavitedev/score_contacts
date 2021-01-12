import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class SelectedContactsRowBar extends StatelessWidget {
  final Set<Contact> selectedContacts;

  const SelectedContactsRowBar({
    Key key,
    @required this.selectedContacts,
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
                .read()<ContactActorBloc>()
                .add(const ContactActorEvent.deselectAllContacts());
          },
        ),
        Expanded(
          child: Text(
            "Selected ${selectedContacts.length} contacts",
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
                .read()<ContactActorBloc>()
                .add(const ContactActorEvent.deleteSelectedContacts());
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
