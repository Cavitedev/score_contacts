import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/application/contacts/contact_watcher/contact_watcher_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ContactPopUp {
  final BuildContext context;
  final SelectionContact selectionContact;
  final ContactActorBloc actorBloc;
  final ContactWatcherBloc watcherBloc;

  const ContactPopUp(
      {required this.context,
      required this.selectionContact,
      required this.actorBloc,
      required this.watcherBloc});

  List<PopupMenuEntry> popUpItems() => [
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            watcherBloc.add(
                ContactWatcherEvent.toggleSelectionContact(selectionContact));
            context.router.pop();
          },
          text: AppLocalization.of(context).translate("select"),
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {},
          text: AppLocalization.of(context).translate("view"),
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            context.router
                .push(r.AddContactPageRoute(contact: selectionContact.contact));
          },
          text: AppLocalization.of(context).translate("edit"),
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialogueCancelOK(
                      title: AppLocalization.of(context).translate(
                          "confirm_delection",
                          args: [selectionContact.contact.getFullName()]),
                      onSubmit: () {
                        actorBloc.add(ContactActorEvent.delete(
                            contactList: [selectionContact.contact]));
                        context.router.popUntil((route) =>
                            route.settings.name == r.ContactListRoute.name);
                      },
                      onCancel: () {
                        context.router.popUntil((route) =>
                            route.settings.name == r.ContactListRoute.name);
                      },
                    ));
          },
          text: AppLocalization.of(context).translate("delete"),
        )),
        PopUpDivider(),
      ];
}

class InkPopUpButton extends StatelessWidget {
  final Function? onTap;
  final String text;

  const InkPopUpButton({
    Key? key,
    this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
          alignment: AlignmentDirectional.center,
          constraints: const BoxConstraints(minHeight: 40, minWidth: 400),
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle2,
          )),
    );
  }
}

class PopUpDivider<T> extends PopupMenuEntry<T> {
  @override
  State<StatefulWidget> createState() {
    return PopUpDividerState();
  }

  @override
  double get height => 5;

  @override
  bool represents(T? value) {
    return false;
  }
}

class PopUpDividerState extends State<PopUpDivider> {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      thickness: 1,
      indent: 5,
      endIndent: 5,
    );
  }
}

class PopUpWidget<T> extends PopupMenuEntry<T> {
  final Widget addedWidget;

  const PopUpWidget({required this.addedWidget});

  @override
  State<StatefulWidget> createState() {
    return PopUpButtonWidget();
  }

  @override
  double get height => 40;

  @override
  bool represents(T? value) {
    return true;
  }
}

class PopUpButtonWidget extends State<PopUpWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.addedWidget;
  }
}
