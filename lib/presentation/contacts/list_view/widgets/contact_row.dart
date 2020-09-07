import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/names/name_data.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/pop_up_contact.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

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

      onTap: () {
        ExtendedNavigator.of(context).pushAddContactPage(contact: contact);
      },
      onLongPress: () {
        final Offset offset = (context.findRenderObject() as RenderBox)
            .localToGlobal(Offset.zero);
        final contactActorBloc = context.bloc<ContactActorBloc>();
        const rowHeight = 60;
        showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
              offset.dx,
              offset.dy + rowHeight,
              0,
              0,
            ),
            items: ContactPopUp(context: context, contact: contact,
                actorBloc: contactActorBloc)
                .popUpItems());
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(
                contact.nameData.firstName.substring(0, 1),
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: "${name.firstName} ${name.surnames}",
                    style: Theme.of(context).textTheme.headline5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
