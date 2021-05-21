import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/pop_up_contact.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactRow extends StatelessWidget {
  final SelectionContact selectionContact;
  final Filter? filter;
  final bool selectionEnabled;

  const ContactRow({
    Key? key,
    required this.selectionContact,
    this.filter,
    required this.selectionEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? urlContact = selectionContact.contact.contactImage?.url;
    return InkWell(
      onTap: () {
        final contactWatcherBloc = context.read<ContactWatcherBloc>();

        if (selectionEnabled) {
          contactWatcherBloc.add(
              ContactWatcherEvent.toggleSelectionContact(selectionContact));
        } else {
          context.router
              .push(r.ViewContactPageRoute(contact: selectionContact.contact));
        }
      },
      onLongPress: () {
        final contactActorBloc = context.read<ContactActorBloc>();
        final contactWatcherBloc = context.read<ContactWatcherBloc>();

        if (selectionEnabled) {
          contactWatcherBloc.add(
              ContactWatcherEvent.toggleSelectionContact(selectionContact));
        } else {
          _popUpItems(context, contactActorBloc, contactWatcherBloc);
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              key: UniqueKey(),
              backgroundColor: selectionContact.isSelected
                  ? Colors.teal[200]
                  : Colors.purple[200],
              foregroundImage: _doesRequiresImage(urlContact)
                  ? NetworkImage(urlContact!)
                  : null,
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

  bool _doesRequiresImage(String? urlContact) =>
      urlContact != null && !selectionContact.isSelected;

  Widget _buildNameWithHints(BuildContext context) {
    if (selectionContact.filterText == null) {
      return Flexible(child: _buildFullName(context));
    } else if (selectionContact.filterText ==
        selectionContact.contact.getFullName()) {
      return Flexible(
          child:
              _buildFullNameHighlighted(context, selectionContact.filterText!));
    } else {
      return Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFullName(context),
            RichText(
              overflow: TextOverflow.ellipsis,
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
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
    final Match? match = filter?.filterSearch
        ?.toLowerCase()
        .allMatches(highlight.toLowerCase())
        .first;
    if (match != null) {
      return RichText(
        overflow: TextOverflow.ellipsis,
        textScaleFactor: MediaQuery.of(context).textScaleFactor,
        text: TextSpan(children: [
          TextSpan(
              text: highlight.substring(0, match.start),
              style: Theme.of(context).textTheme.headline5),
          TextSpan(
              text: highlight.substring(match.start, match.end),
              style: Theme.of(context)
                  .textTheme
                  .headline5!
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
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: selectionContact.contact.getFullName(),
          style: Theme.of(context).textTheme.headline5),
    );
  }

  void _popUpItems(BuildContext context, ContactActorBloc contactActorBloc,
      ContactWatcherBloc contactWatcherBloc) {
    final Offset offset =
        (context.findRenderObject()! as RenderBox).localToGlobal(Offset.zero);
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
                selectionContact: selectionContact,
                actorBloc: contactActorBloc,
                watcherBloc: contactWatcherBloc)
            .popUpItems());
  }
}
