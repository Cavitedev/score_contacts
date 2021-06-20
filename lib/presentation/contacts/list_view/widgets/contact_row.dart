import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/domain/core/filter.dart';
import 'package:scorecontacts/presentation/contacts/list_view/widgets/pop_up_contact.dart';
import 'package:scorecontacts/presentation/contacts/widgets/contact_circle_avatar.dart';
import 'package:scorecontacts/presentation/core/bold_text.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactRow extends StatelessWidget {
  static const double _basicHeight = 60;

  static double height(BuildContext context) {
    if (MediaQuery.textScaleFactorOf(context) < 1.4) {
      return _basicHeight;
    } else {
      return 66;
    }
  }

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
    return InkWell(
      onTap: () {
        final contactWatcherBloc = context.read<ContactWatcherBloc>();

        if (selectionEnabled) {
          contactWatcherBloc
              .add(ContactWatcherEvent.toggleSelectionContact(selectionContact));
        } else {
          context.router.push(r.ViewContactPageRoute(
            contact: selectionContact.contact,
            onDelete: () {
              context
                  .read<ContactActorBloc>()
                  .add(ContactActorEvent.delete(contactList: [selectionContact.contact]));
            },
          ));
        }
      },
      onLongPress: () {
        final contactActorBloc = context.read<ContactActorBloc>();
        final contactWatcherBloc = context.read<ContactWatcherBloc>();

        if (selectionEnabled) {
          contactWatcherBloc
              .add(ContactWatcherEvent.toggleSelectionContact(selectionContact));
        } else {
          _popUpItems(context, contactActorBloc, contactWatcherBloc);
        }
      },
      child: Container(
        padding: Constants.bigPaddingList,
        height: height(context),
        child: Row(
          children: <Widget>[
            ContactCircleAvatar(
              selectionContact: selectionContact,
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
    } else if (selectionContact.filterText == selectionContact.contact.getName()) {
      return Flexible(
          child: _buildFullNameHighlighted(context, selectionContact.filterText!));
    } else {
      return Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFullName(context) ,
            ..._buildExtraSearchDataIfRequired(context)
          ],
        ),
      );
    }
  }

  //Note: Should return only at most 1 element
  List<RichText> _buildExtraSearchDataIfRequired(BuildContext context) {
    if (selectionContact.filterText?.isEmpty ?? false) {
      return [];
    }
    final List<Match>? matchList = _matchesOnHighlight(selectionContact.filterText!);
    if (matchList == null) {
      return [];
    }

    return [RichText(
            overflow: TextOverflow.ellipsis,
            textScaleFactor: MediaQuery.of(context).textScaleFactor,
            text: TextSpan(
              children: spansWithBoldIfInMatches(
                  completeText: selectionContact.filterText!,
                  startPos: 0,
                  endPos: selectionContact.filterText!.length,
                  matches: matchList,
                  textStyle: Theme.of(context).textTheme.caption ?? const TextStyle())
              .toList(),),
          )];
  }

  RichText _buildFullNameHighlighted(BuildContext context, String highlight) {
    final List<Match>? matchList = _matchesOnHighlight(highlight);
    if (matchList == null || matchList.isEmpty) {
      return _buildFullName(context);
    }

    return RichText(
      overflow: TextOverflow.ellipsis,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text: TextSpan(
          children: spansWithBoldIfInMatches(
                  completeText: highlight,
                  startPos: 0,
                  endPos: highlight.length,
                  matches: matchList,
                  textStyle: Theme.of(context).textTheme.headline5 ?? const TextStyle())
              .toList()
          ),
    );
  }

  List<Match>? _matchesOnHighlight(String highlight) {
    final List<Match>? matchList =
        filter?.filterSearch?.toLowerCase().allMatches(highlight.toLowerCase()).toList();
    return matchList;
  }

  RichText _buildFullName(BuildContext context) {
    return RichText(
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: selectionContact.contact.getName(),
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
