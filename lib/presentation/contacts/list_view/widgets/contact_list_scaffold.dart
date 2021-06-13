import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contacts_search_bar.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/selected_contacts_row_bar.dart';

import 'contact_floating_action_button.dart';
import 'contact_list_drawer.dart';
import 'contact_row.dart';

class ContactsListScaffold extends StatefulWidget {
  final LoadSuccessValues stateValues;

  const ContactsListScaffold({
    Key? key,
    required this.stateValues,
  }) : super(key: key);

  @override
  _ContactsListScaffoldState createState() => _ContactsListScaffoldState();
}

class _ContactsListScaffoldState extends State<ContactsListScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final displayedContactList = widget.stateValues.selectionContactList;
    return Scaffold(
      key: _scaffoldKey,
      drawer: const ContactListDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            if (widget.stateValues.hasSelectedContacts())
              Container(
                color: Theme.of(context).dialogBackgroundColor,
                child: SelectedContactsRowBar(
                  selectionContacts: displayedContactList,
                  areAllContactsSelected: widget.stateValues.areAllContactsSelected(),
                ),
              )
            else
              const SizedBox(),
            ContactsSearchBar(
              scaffoldKey: _scaffoldKey,
              displayedContactList: displayedContactList,
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: widget.stateValues
                    .displayedContacts()
                    .map((contact) => ContactRow(
                          selectionContact: contact,
                          filter: widget.stateValues.filter,
                          selectionEnabled: widget.stateValues.hasSelectedContacts(),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ContactFloatingActionButton(
        contactList: displayedContactList.toContacts(),
      ),
    );
  }
}
