import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_row.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/selected_contacts_row_bar.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactsListScaffold extends StatefulWidget {
  final LoadSuccessValues stateValues;

  const ContactsListScaffold({
    Key key,
    @required this.stateValues,
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text('Contacts'),
            ),
            ListTile(
              title: const Text('Load Contacts from device'),
              leading: const Icon(Icons.phone_android),
              onTap: () {
                Navigator.pop(context);
                context
                    .read<ContactActorBloc>()
                    .add(const ContactActorEvent.loadContactsFromSystem());
              },
            ),
          ],
        ),
      ),
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
            TextFieldContainer(
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText:
                              "🔎 Search ${displayedContactList.length} contacts",
                          border: InputBorder.none),
                      onChanged: (str) {
                        context
                            .read<ContactWatcherBloc>()
                            .add(ContactWatcherEvent.searchContact(str));
                      },
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: displayedContactList.displayedContacts()
                        .map((contact) => ContactRow(
                              selectionContact: contact,
                              filter: widget.stateValues.filter,
                              selectionEnabled:
                                  widget.stateValues.hasSelectedContacts(),
                            ))
                        .toList()),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<ContactWatcherBloc>()
              .add(const ContactWatcherEvent.deselectAllContacts());
          ExtendedNavigator.of(context).pushAddContactPage();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
