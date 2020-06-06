import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_state.dart';
import 'package:scorecontacts/application/contacts/add_contact/bloc.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';
import 'package:scorecontacts/presentation/core/widgets/text_fields_with_dropdowns.dart';

class AddContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddContactBloc, AddContactState>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Create Contact",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                //TODO save contact to database
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.check),
              ),
            )
          ],
        ),
        body: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  const OutlinedInputField(
                    hintText: "Name",
                    autoFocus: true,
                    textCapitalization: TextCapitalization.words,
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  const OutlinedInputField(
                      hintText: "Surname",
                      textCapitalization: TextCapitalization.words),
                  const SizedBox(
                    height: 20,
                  ),
//                  TextFieldsWithDropdowns(
//                    items: const ["Mobile", "Home", "Work"],
//                    hintText: "Phone",
//                    prefixIcon: const Icon(Icons.phone),
//                    keyboardType: TextInputType.phone,
//                    inputFormatters: <TextInputFormatter>[
//                      PhoneTextFormatter(context: context)
//                    ],
//                  ),
//                  const SizedBox(
//                    height: 20,
//                  ),

                  TextFieldsWithDropdowns(
                    labelObjects: state.emails,
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    keyboardType: TextInputType.emailAddress,
                    onAddWidget: () => context
                        .bloc<AddContactBloc>()
                        .add(const AddLabelElement<Email>()),
                    onRemoveWidget: (pos) => context
                        .bloc<AddContactBloc>()
                        .add(RemoveLabelElement<Email>(pos: pos)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const OutlinedInputField(
                    hintText: "Company",
                    prefixIcon: Icon(Icons.business),
                    textCapitalization: TextCapitalization.words,
                  ),
                  const OutlinedInputField(
                    hintText: "Title",
                    textCapitalization: TextCapitalization.words,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
