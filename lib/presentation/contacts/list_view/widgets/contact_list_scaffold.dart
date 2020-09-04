import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/contact_row.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactsListScaffold extends StatelessWidget {
  final List<Contact> contacts;

  const ContactsListScaffold({
    Key key,
    this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    icon: const Icon(
                      Icons.menu,
                    ),
                    hintText: "🔎 Search ${contacts.length} contacts",
                    border: InputBorder.none),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                  children: contacts
                      .map((contact) => ContactRow(
                            contact: contact,
                          ))
                      .toList()),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExtendedNavigator.of(context).pushAddContactPage(contact: null);
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
