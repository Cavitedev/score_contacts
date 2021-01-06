import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_drawer/contact_drawer_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_row.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/selected_contaacts_row_bar.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactsListScaffold extends StatelessWidget {
  final List<Contact> contacts;
  // final GlobalKey<ScaffoldState> scaffoldKey;


  const ContactsListScaffold({
    Key key,
    this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactDrawerBloc, ContactDrawerState>(
      builder: (context, state){
        return Scaffold(
          key: state.scaffoldKey,
          drawer: const Drawer(),
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
                  child: TextField(
                    decoration: InputDecoration(
                        icon:  IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            state.scaffoldKey.currentState.openDrawer();
                          },
                        ),
                        hintText: "🔎 Search ${contacts.length} contacts",
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: BlocBuilder<ContactActorBloc, ContactActorState>(
                      builder: (context, state) => Column(
                          children: contacts
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
      },
    );
  }
}
