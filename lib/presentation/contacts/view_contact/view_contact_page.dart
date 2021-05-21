import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';

class ViewContactPage extends StatelessWidget {
  final Contact contact;

  const ViewContactPage({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "Delete",
                  child: Text(
                    "Delete",
                  ),
                )
              ];
            },
          )
        ],
      ),
    );
  }
}
