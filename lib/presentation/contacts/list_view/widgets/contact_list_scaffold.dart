import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contacts_search_bar.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/selected_contacts_row_bar.dart';
import 'package:scorecontacts/presentation/core/widgets/alphabet_scroll_view/alphabet_scroll_view.dart';

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
              child: AlphabetScrollView(
                itemHeight: ContactRow.height(context),
                list: widget.stateValues.displayedContacts().toContacts(),
                unselectedTextStyle: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontSize: 16 / MediaQuery.textScaleFactorOf(context)),
                selectedTextStyle: TextStyle(
                    color: Theme.of(context).accentIconTheme.color,
                    fontSize: 16 / MediaQuery.textScaleFactorOf(context)),
                itemBuilder: (context, i) {
                  final SelectionContact contact =
                      widget.stateValues.displayedContacts()[i];

                  return ContactRow(
                    selectionContact: contact,
                    filter: widget.stateValues.filter,
                    selectionEnabled: widget.stateValues.hasSelectedContacts(),
                  );
                },
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
