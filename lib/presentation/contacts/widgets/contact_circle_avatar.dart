import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';

class ContactCircleAvatar extends StatelessWidget {
  final SelectionContact selectionContact;

  final double radius;

  const ContactCircleAvatar({required this.selectionContact, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return _buildCircleAvatar(context);
  }

  CircleAvatar _buildCircleAvatar(BuildContext context) {
    final String? urlContact = selectionContact.contact.contactImage?.url;

    return CircleAvatar(
      key: UniqueKey(),
      radius: radius,
      backgroundColor:
          selectionContact.isSelected ? Colors.teal[200] : Colors.purple[200],
      foregroundImage:
          _doesRequiresImage(urlContact) ? NetworkImage(urlContact!) : null,
      onForegroundImageError: _doesRequiresImage(urlContact)
          ? (_, ex) {
              FlushbarHelper.createError(
                      message: AppLocalization.of(context)
                          .translate("error_load_contact_image", args: [
                        selectionContact.contact.nameData.toFullName(),
                      ]),
                      duration: const Duration(seconds: 8))
                  .show(context);
            }
          : null,
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
