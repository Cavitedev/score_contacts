import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/presentation/core/widgets/avatar/custom_circle_avatar.dart';

class ContactCircleAvatar extends StatelessWidget {
  final SelectionContact selectionContact;

  final double radius;

  const ContactCircleAvatar({required this.selectionContact, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return _buildCircleAvatar(context);
  }

  Widget _buildCircleAvatar(BuildContext context) {
    final String? urlContact = selectionContact.contact.contactImage?.url;

    return CustomCircleAvatar(
      key: UniqueKey(),
      backgroundColor:
          selectionContact.isSelected ? Colors.teal[200] : Colors.purple[200],
      image: _doesRequiresImage(urlContact) ? urlContact! : null,
      name: selectionContact.contact.nameData.toFullName(),
      child: selectionContact.isSelected
          ? const Icon(
              Icons.check,
              color: Colors.black,
              size: 30,
            )
          : selectionContact.contact.getDisplayedChar() == ""
              ? const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30,
                )
              : Text(
                  selectionContact.contact.getDisplayedChar(),
                  style: Theme.of(context).textTheme.headline2,
                ),
    );
  }

  bool _doesRequiresImage(String? urlContact) =>
      urlContact != null && !selectionContact.isSelected;
}
