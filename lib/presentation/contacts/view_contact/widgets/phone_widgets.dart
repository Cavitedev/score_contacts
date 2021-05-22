import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

List<Widget> listOfPhones(final Contact contact) {
  if (contact.labelObjects == null || contact.labelObjects![Phone] == null) {
    return [];
  }
  final List<Phone> phones = contact.labelObjects![Phone]! as List<Phone>;

  return phones
      .where((phone) => phone.value?.isNotEmpty ?? false)
      .map((phone) => PhoneListTile(phone: phone))
      .toList();
}

class PhoneListTile extends StatelessWidget {
  final Phone phone;

  const PhoneListTile({
    Key? key,
    required this.phone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(phone.value!),
      leading: IconButton(
        iconSize: IconTheme.of(context).size ?? 32,
        color: Theme.of(context).accentIconTheme.color,
        icon: const Icon(Icons.phone),
        onPressed: () {
          context
              .read<ViewContactBloc>()
              .add(ViewContactEvent.callNumber(phone.value!));
        },
      ),
      subtitle: phone.label != null ? Text(phone.label!) : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            iconSize: IconTheme.of(context).size ?? 32,
            color: Theme.of(context).accentIconTheme.color,
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
