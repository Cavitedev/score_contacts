import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/contacts/widgets/contact_circle_avatar.dart';

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
          ),
        ],
      ),
      body: ListView(
        children: [_buildImageOrAvatar()],
      ),

      floatingActionButton: FloatingActionButton.extended(onPressed: () {  },
      label: Text(AppLocalization.of(context).translate("edit"), style: Theme.of(context).textTheme.headline4,),
      icon: const Icon(Icons.edit, color: Colors.white,),
      ),
    );
  }

  Widget _buildImageOrAvatar() {
    final String? urlContact = contact.contactImage?.url;
    return urlContact == null
        ? _buildAvatar()
        : Image.network(
            urlContact,
            fit: BoxFit.fitWidth,
          );
  }

  Widget _buildAvatar() {
    return Column(
      children: [
        const SizedBox(height: 20),
        ContactCircleAvatar(
          selectionContact: SelectionContact(contact: contact),
          radius: 30,
        ),
      ],
    );
  }
}
