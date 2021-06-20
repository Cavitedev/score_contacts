import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/presentation/core/extra/color_from_text.dart';
import 'package:scorecontacts/presentation/core/widgets/avatar/custom_circle_avatar.dart';

class ContactCircleAvatar extends StatelessWidget {
  final SelectionContact selectionContact;

  final double radius;

  const ContactCircleAvatar({
    required this.selectionContact,
    this.radius = 20,
    Key? key
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAvatar(context);
  }

  Widget _buildAvatar(BuildContext context) {
    final String? urlContact = selectionContact.contact.contactImage?.url;
    final double increaseFactor = radius / 20;
    return Hero(
      tag: selectionContact.contact.id.value,
      child: CustomCircleAvatar(
        backgroundColor: selectionContact.isSelected
            ? Colors.teal[200]
            : colorGivenName(selectionContact.contact.id.value),
        image: _doesRequiresImage(urlContact) ? urlContact! : null,
        name: selectionContact.contact.nameData.toFullName(),
        radius: radius,
        child: selectionContact.isSelected
            ? Icon(
                Icons.check,
                color: Colors.black,
                size: 30 * increaseFactor,
              )
            : selectionContact.contact.getDisplayedChar() == ""
                ? Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30 * increaseFactor,
                  )
                : Text(
                    selectionContact.contact.getDisplayedChar(),
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          fontSize: 30 * increaseFactor,
                        ),
                  ),
      ),
    );
  }

  bool _doesRequiresImage(String? urlContact) =>
      urlContact != null && !selectionContact.isSelected;
}
