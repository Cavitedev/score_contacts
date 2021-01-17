import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/pop_up_contact.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactRow extends StatelessWidget {
  final SelectionContact selectionContact;

  const ContactRow({
    Key key,
    @required this.selectionContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final contactActorBloc = context.read<ContactActorBloc>();
        contactActorBloc.state.maybeMap(
          selectContacts: (_) {
            contactActorBloc
                .add(ContactActorEvent.toggleSelectionContact(selectionContact.contact));
          },
          orElse: () {
            ExtendedNavigator.of(context).pushAddContactPage(contact: selectionContact.contact);
          },
        );
      },
      onLongPress: () {
        final contactActorBloc = context.read<ContactActorBloc>();

        contactActorBloc.state.maybeMap(
          selectContacts: (_) {
            contactActorBloc
                .add(ContactActorEvent.toggleSelectionContact(selectionContact.contact));
          },
          orElse: () {
            _popUpItems(context, contactActorBloc);
          },
        );


      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor:
                  selectionContact.isSelected ? Colors.teal[200] : Colors.purple[200],
              child: selectionContact.isSelected
                  ? const Icon(
                      Icons.check,
                      color: Colors.black,
                      size: 30,
                    )
                  : Text(
                      selectionContact.contact?.nameData?.firstName?.substring(0, 1)?.toUpperCase() ?? "",
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w500),
                    ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: selectionContact.contact.getFullName(),
                    style: Theme.of(context).textTheme.headline5),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _popUpItems(BuildContext context, ContactActorBloc contactActorBloc) {
    final Offset offset = (context.findRenderObject() as RenderBox)
        .localToGlobal(Offset.zero);
    const rowHeight = 60;
    showMenu(
        context: context,
        position: RelativeRect.fromLTRB(
          offset.dx,
          offset.dy + rowHeight,
          0,
          0,
        ),
        items: ContactPopUp(
          context: context,
          contact: selectionContact.contact,
          actorBloc: contactActorBloc,
        ).popUpItems());
  }
}
