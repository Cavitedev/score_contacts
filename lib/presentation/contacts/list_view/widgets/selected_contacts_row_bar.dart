import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';
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
    final int contactsAmount = selectionContacts.selectedContactsAmount();
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
            AppLocalization.of(context).translate(
              "select_contacts_${contactsAmount != 1 ? "plural" : "single"}",
              args: [contactsAmount.toString()],
            ),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
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
                      title: AppLocalization.of(context).translate(
                        "confirm_deletion_contacts_${contactsAmount != 1 ? "plural" : "single"}",
                        args: [contactsAmount.toString()],
                      ),
                      onSubmit: () {
                        actorBloc.add(ContactActorEvent.delete(
                            contactList:
                                selectionContacts.selectedContacts().toContacts()));
                      },
                    ));
          },
        ),
        if (!areAllContactsSelected)
          PopupMenuButton(
            onSelected: (selected) {
              if (selected == "Select_all") {
                context
                    .read<ContactWatcherBloc>()
                    .add(const ContactWatcherEvent.selectAllContacts());
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Select_all",
                  child: Text(
                    AppLocalization.of(context).translate("select_all"),
                  ),
                )
              ];
            },
          ),
      ],
    );
  }
}
