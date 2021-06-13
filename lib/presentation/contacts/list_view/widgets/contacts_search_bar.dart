import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/form/text_field_container.dart';

class ContactsSearchBar extends StatelessWidget {
  const ContactsSearchBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.displayedContactList,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final List<SelectionContact> displayedContactList;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
                FocusScope.of(context).unfocus();
              },
            ),
          ),
          Expanded(
            flex: 8,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "🔎 ${AppLocalization.of(context).translate(
                    "search_contacts",
                    args: [displayedContactList.length.toString()],
                  )}",
                  border: InputBorder.none),
              onChanged: (str) {
                context
                    .read<ContactWatcherBloc>()
                    .add(ContactWatcherEvent.searchContact(str));
              },
            ),
          ),
        ],
      ),
    );
  }
}
