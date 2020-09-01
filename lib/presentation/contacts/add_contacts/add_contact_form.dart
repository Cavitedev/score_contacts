import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/presentation/core/formatters/number_text_input_formatter.dart';
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
            child: const Icon(Icons.close),
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {
                //TODO save contact to database
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
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
                  _buildLabelList(
                    context: context,
                    state: state,
                    defaultLabelObject: const Phone(),
                    hintText: "Phone",
                    icon: const Icon(Icons.phone),
                    keyboardType: TextInputType.phone,
                    inputFormatters: <TextInputFormatter>[
                      PhoneTextFormatter(context: context)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildLabelList(
                    context: context,
                    state: state,
                    defaultLabelObject: const Email(),
                    hintText: "Email",
                    icon: const Icon(Icons.mail),
                    keyboardType: TextInputType.emailAddress,
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

  TextFieldsWithDropdowns _buildLabelList({
    @required BuildContext context,
    @required AddContactState state,
    @required ILabelObject defaultLabelObject,
    String hintText,
    bool autoCorrect = false,
    TextInputType keyboardType,
    TextCapitalization textCapitalization = TextCapitalization.none,
    Icon icon,
    List<TextInputFormatter> inputFormatters,
  }) {
    return TextFieldsWithDropdowns(
      labelObjects: state.labelObjects[defaultLabelObject.runtimeType],
      hintText: hintText,
      prefixIcon: icon,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      autoCorrect: autoCorrect,
      inputFormatters: inputFormatters,
      onAddWidget: () => context
          .bloc<AddContactBloc>()
          .add(AddContactEvent.addLabelObject(defaultLabelObject)),
      onRemoveWidget: (pos) => context.bloc<AddContactBloc>().add(
          AddContactEvent.removeLabelObject(
              defaultLabelObject.runtimeType, pos)),
      onTextChanged: (i, str) => context.bloc<AddContactBloc>().add(
          AddContactEvent.labelObjectChanged(
              state.labelObjects[defaultLabelObject.runtimeType][i]
                  .copyWith(value: str),
              i)),
      onLabelChanged: (i, value) => context.bloc<AddContactBloc>().add(
          AddContactEvent.labelObjectChanged(
              state.labelObjects[defaultLabelObject.runtimeType][i]
                  .copyWith(label: value),
              i)),
    );
  }
}
