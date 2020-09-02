import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/names/name_data.dart';

class ContactRow extends StatelessWidget {
  final Contact contact;

  const ContactRow({
    Key key,
    @required this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NameData name = contact.nameData;

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
                        "${name.namePrefix} ${name.firstName} ${name.nameSuffix} ${name.middleName} ${name.firstName} ${name.surnames} ",
                    style: Theme.of(context).textTheme.headline5),
              ),
            )
          ],
        ),
      ),
    );
  }
}