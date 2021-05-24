import 'package:flutter/material.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';

List<Widget> listLabelObjectWidget({
  required Contact contact,
  required Type typeLabelObject,
  required IconData icon,
  Function(ILabelObject labelObject)? onTap,
}) {
  if (contact.labelObjects == null ||
      contact.labelObjects![typeLabelObject] == null) {
    return [];
  }
  return contact.labelObjects![typeLabelObject]!
      .where((lo) => lo.value?.isNotEmpty ?? false)
      .map((lo) => LabelObjectWidget(
            labelObject: lo,
            icon: icon,
            onTap: onTap,
          ))
      .toList();
}

class LabelObjectWidget extends StatelessWidget {
  final IconData icon;
  final ILabelObject labelObject;
  final Function(ILabelObject labelObject)? onTap;

  const LabelObjectWidget({
    required this.labelObject,
    required this.icon,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(labelObject.value!),
      leading: _iconOnTap(context),
      subtitle: Text(labelObject.label!),
      onTap: onTap == null
          ? null
          : () {
              onTap!.call(labelObject);
            },
    );
  }

  Widget _iconOnTap(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        icon,
        color: onTap != null ? Theme.of(context).accentIconTheme.color : null,
        size: IconTheme.of(context).size ?? 32,
      ),
    );
  }
}
