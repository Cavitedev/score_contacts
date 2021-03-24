import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';

class SelectedContactsRowBar extends StatelessWidget {
  final List<SelectionContact> selectionContacts;
  final bool areAllContactsSelected;

  const SelectedContactsRowBar({
    Key? key,
    required this.selectionContacts,
    required this.areAllContactsSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int contactsAmount = selectionContacts.selectedContactsAmount();
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
            "Selected $contactsAmount ${contactsAmount != 1 ? "contacts" : "contact"}",
            overflow: TextOverflow.ellipsis,
            style: Theme
                .of(context)
                .textTheme
                .subtitle1,
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
            final actorBloc = context.read<ContactActorBloc>();
            showDialog(
                context: context,
                builder: (context) => AlertDialogueCancelOK(
                  title:
                  'Do you want to delete $contactsAmount ${contactsAmount != 1 ? "contacts" : "contact"}',
                  onSubmit: () {
                    actorBloc.add(ContactActorEvent.delete(
                        contactList:
                        selectionContacts.selectedContacts().toContacts()));
                  },
                ));



          },
        ),
        if(!areAllContactsSelected)
        PopupMenuButton(
          onSelected: (selected) {
            if (selected == "Select_all") {
              context.read<ContactWatcherBloc>().add(
                  const ContactWatcherEvent.selectAllContacts());
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: "Select_all",
                child: Text(
                  "Select all",
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle1,
                ),
              )
            ];
          },
        ),
      ],
    );
  }
}
