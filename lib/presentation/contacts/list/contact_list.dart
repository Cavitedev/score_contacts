import 'package:flutter/material.dart';
import 'package:scorecontacts/fixtures/contacts_fixtures.dart';
import 'package:scorecontacts/presentation/contacts/list/widgets/contact_row.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_container.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.menu,
                    ),
                    hintText: "🔎 Search 432 contacts",
                    border: InputBorder.none),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children:
                contacts.map((contact) =>
                ContactRow(
                  contact: contact,
                )).toList()
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}


