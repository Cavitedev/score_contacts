import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/selected_contact.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/pop_up_contact.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactRow extends StatelessWidget {
  final SelectionContact selectionContact;
  final Filter filter;

  const ContactRow({
    Key key,
    @required this.selectionContact,
    this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final contactActorBloc = context.read<ContactActorBloc>();
        contactActorBloc.state.maybeMap(
          selectContacts: (_) {
            contactActorBloc.add(ContactActorEvent.toggleSelectionContact(
                selectionContact.contact));
          },
          orElse: () {
            ExtendedNavigator.of(context)
                .pushAddContactPage(contact: selectionContact.contact);
          },
        );
      },
      onLongPress: () {
        final contactActorBloc = context.read<ContactActorBloc>();

        contactActorBloc.state.maybeMap(
          selectContacts: (_) {
            contactActorBloc.add(ContactActorEvent.toggleSelectionContact(
                selectionContact.contact));
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
              backgroundColor: selectionContact.isSelected
                  ? Colors.teal[200]
                  : Colors.purple[200],
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
                          style: const TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w500),
                        ),
            ),
            const SizedBox(
              width: 20,
            ),
            _buildNameWithHints(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNameWithHints(BuildContext context) {
    if (selectionContact.filterText == null) {
      return Flexible(child: _buildFullName(context));
    } else if (selectionContact.filterText ==
        selectionContact.contact.getFullName()) {
      return Flexible(
          child:
              _buildFullNameHighlighted(context, selectionContact.filterText));
    } else {
      return Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFullName(context),
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                  text: selectionContact.filterText,
                  style: Theme.of(context).textTheme.caption),
            )
          ],
        ),
      );
    }
  }

  RichText _buildFullNameHighlighted(BuildContext context, String highlight) {


    final Match match = filter.filterSearch.toLowerCase().allMatches(highlight.toLowerCase()).first;
    if (match != null) {
      return RichText(
        overflow: TextOverflow.ellipsis,
        text: TextSpan(children: [
          TextSpan(
              text: highlight.substring(0, match.start),
              style: Theme.of(context).textTheme.headline5),
          TextSpan(
              text: highlight.substring(match.start, match.end),
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
          TextSpan(
              text: highlight.substring(match.end),
              style: Theme.of(context).textTheme.headline5),
        ]),
      );
    }

    return _buildFullName(context);
  }

  RichText _buildFullName(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: selectionContact.contact.getFullName(),
          style: Theme.of(context).textTheme.headline5),
    );
  }

  void _popUpItems(BuildContext context, ContactActorBloc contactActorBloc) {
    final Offset offset =
        (context.findRenderObject() as RenderBox).localToGlobal(Offset.zero);
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
