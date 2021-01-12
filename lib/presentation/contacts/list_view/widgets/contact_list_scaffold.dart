import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_row.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/selected_contacts_row_bar.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactsListScaffold extends StatefulWidget {
  final List<Contact> contacts;


  const ContactsListScaffold({
    Key key,
    this.contacts,
  }) : super(key: key);

  @override
  _ContactsListScaffoldState createState() => _ContactsListScaffoldState();
}

class _ContactsListScaffoldState extends State<ContactsListScaffold> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                BlocBuilder<ContactActorBloc, ContactActorState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        selectContacts: (state) => Container(
                              color: Theme.of(context).dialogBackgroundColor,
                              child: SelectedContactsRowBar(
                                selectedContacts: state.selectedContacts,
                              ),
                            ),
                        orElse: () => const SizedBox());
                  },
                ),
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
                              hintText: "🔎 Search ${widget.contacts.length} contacts",
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: BlocBuilder<ContactActorBloc, ContactActorState>(
                      builder: (context, state) => Column(
                          children: widget.contacts
                              .map((contact) => ContactRow(
                                    contact: contact,
                                    selectedContact: state.maybeMap(
                                        selectContacts: (state) => state
                                            .selectedContacts
                                            .contains(contact),
                                        orElse: () => false),
                                  ))
                              .toList()),
                    ),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context
                  .read<ContactActorBloc>()
                  .add(const ContactActorEvent.deselectAllContacts());
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
