import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';

List<Widget> listOfPhones(
    {required Contact contact, required Function(Phone phone, String app) onAppMessage}) {
  if (contact.labelObjects == null || contact.labelObjects![Phone] == null) {
    return [];
  }
  final List<Phone> phones = contact.labelObjects![Phone]! as List<Phone>;

  return phones
      .where((phone) => phone.value?.isNotEmpty ?? false)
      .map((phone) => _widgetsInPhone(phone, onAppMessage: onAppMessage))
      .expand((element) => element)
      .toList();
}

List<Widget> _widgetsInPhone(final Phone phone,
    {required Function(Phone phone, String app) onAppMessage}) {
  return [
    PhoneListTile(phone: phone),
    AppMessageListTile(
      phone: phone,
      image: "whatsapp",
      onTap: () {onAppMessage(phone, "com.whatsapp");},
    )
  ];
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
            onPressed: () {
              context
                  .read<ViewContactBloc>()
                  .add(ViewContactEvent.sendMessage(phone.value!));
            },
          ),
        ],
      ),
    );
  }
}

class AppMessageListTile extends StatelessWidget {
  final Phone phone;
  final String image;
  final Function onTap;

  const AppMessageListTile({
    required this.phone,
    required this.image,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imageString = "assets/icons/brands/$image.png";
    return ListTile(
      title: Text(phone.value!),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Image.asset(
          imageString,
          height: IconTheme.of(context).size ?? 32,
          width: IconTheme.of(context).size ?? 32,
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
