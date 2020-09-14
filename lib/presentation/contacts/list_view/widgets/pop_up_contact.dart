import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:scorecontacts/application/contacts/contact_actor/contact_actor_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart';

class ContactPopUp {
  final BuildContext context;
  final Contact contact;
  final ContactActorBloc actorBloc;

  const ContactPopUp({
    @required this.context,
    @required this.contact,
    @required this.actorBloc,
  });

  List<PopupMenuEntry> popUpItems() => [
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            actorBloc.add(ContactActorEvent.toggleSelectionContact(contact));
            ExtendedNavigator.of(context).pop();
          },
          text: "Select",
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {},
          text: "View",
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            ExtendedNavigator.of(context).pushAddContactPage(contact: contact);
          },
          text: "Edit",
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialogueCancelOK(
                      title:
                          'Do you want to delete "${contact.nameData.firstName} ${contact.nameData.surnames}" contact',
                      onSubmit: () {
                        actorBloc.add(
                            ContactActorEvent.delete(contact: contact));
                        ExtendedNavigator.of(context).popUntil((route) =>
                        route.settings.name == Routes.contactList);
                      },
                      onCancel: () {
                        ExtendedNavigator.of(context).popUntil((route) =>
                            route.settings.name == Routes.contactList);
                      },
                    ));
          },
          text: "Delete",
        )),
        PopUpDivider(),
        PopUpWidget(
            addedWidget: InkPopUpButton(
          onTap: () {
            ExtendedNavigator.of(context).pop();
          },
          text: "Add to favourites TODO",
        )),
        PopUpDivider(),
      ];
}

class InkPopUpButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const InkPopUpButton({
    Key key,
    this.onTap,
    @required this.text,
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
  bool represents(T value) {
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

  const PopUpWidget({@required this.addedWidget});

  @override
  State<StatefulWidget> createState() {
    return PopUpButtonWidget();
  }

  @override
  double get height => 40;

  @override
  bool represents(T value) {
    return true;
  }
}

class PopUpButtonWidget extends State<PopUpWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.addedWidget;
  }
}
