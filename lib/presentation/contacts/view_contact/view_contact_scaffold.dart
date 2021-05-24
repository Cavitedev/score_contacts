import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/selection_contact.dart';
import 'package:scorecontacts/application/contacts/view_contact/view_contact_bloc.dart';
import 'package:scorecontacts/application/core/app_manager_cubit.dart';
import 'package:scorecontacts/core/app_constants.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/widgets/company_widgets.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/widgets/label_object_widgets.dart';
import 'package:scorecontacts/presentation/contacts/view_contact/widgets/phone_widgets.dart';
import 'package:scorecontacts/presentation/contacts/widgets/contact_circle_avatar.dart';
import 'package:scorecontacts/presentation/routes/router.gr.dart' as r;

class ViewContactScaffold extends StatelessWidget {
  final Contact contact;
  final Function onDelete;

  const ViewContactScaffold({
    required this.contact,
    required this.onDelete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (selected) {
              if (selected == "delete") {
                context.router.popUntil((route) =>
                    route.settings.name == r.ViewContactPageRoute.name);
                onDelete.call();
                context.router.pop();
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "delete",
                  child: Text(
                    "Delete",
                  ),
                )
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildImageOrAvatar(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: horizontalNormalPadding,
            child: Text(
              contact.getFullName(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          ...listOfPhones(
            contact: contact,
            onAppMessage: (phone, app) {
              context.read<ViewContactBloc>().add(
                    ViewContactEvent.sendMessageThroughApp(
                        phone: phone,
                        region: context.read<AppManagerCubit>().state.region,
                        app: app),
                  );
            },
          ),
          ...listLabelObjectWidget(
            contact: contact,
            typeLabelObject: Email,
            icon: Icons.mail,
            onTap: (mail) {
              context
                  .read<ViewContactBloc>()
                  .add(ViewContactEvent.sendMail(mail.value!));
            },
          ),
          ...listCompanyWidget(companies: contact.companies),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.push(r.AddContactPageRoute(contact: contact));
        },
        label: Text(
          AppLocalization.of(context).translate("edit"),
          style: Theme.of(context).textTheme.headline4,
        ),
        icon: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildImageOrAvatar() {
    final String? urlContact = contact.contactImage?.url;
    return urlContact == null
        ? _buildAvatar()
        : Image.network(
            urlContact,
            fit: BoxFit.fitWidth,
          );
  }

  Widget _buildAvatar() {
    return Column(
      children: [
        const SizedBox(height: 20),
        ContactCircleAvatar(
          selectionContact: SelectionContact(contact: contact),
          radius: 30,
        ),
      ],
    );
  }
}
