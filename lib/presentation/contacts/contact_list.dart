import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/features/contacts/attributes/names/name_data.dart';
import 'package:scorecontacts/domain/features/contacts/contact.dart';
import 'package:scorecontacts/fixtures/contacts_fixtures.dart';
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
                children: <Widget>[

                  ContactRow(
                      contact: contacts[0],
                    ),

                ],
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

class ContactRow extends StatelessWidget {
  final Contact contact;

  const ContactRow({
    Key key,
    @required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NameData name = contact.nameData;

    return InkWell(

      onTap: () {},
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
        child: Row(

          children: <Widget>[
            CircleAvatar(
              child: Text(contact.nameData.firstName.substring(0, 1)),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text:
                        "${name.namePrefix} ${name.firstName} ${name.nameSuffix} ${name.middleName} ${name.firstName} ${name.secondSurname} ",
                    style: Theme.of(context).textTheme.headline5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
