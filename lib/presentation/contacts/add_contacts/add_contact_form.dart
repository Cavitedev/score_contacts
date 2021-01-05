import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/label_object_builder.dart';
import 'package:scorecontacts/presentation/core/formatters/number_text_input_formatter.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_fields.dart';

class AddContactForm extends StatelessWidget {
  const AddContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(
      builder: (context, state) => Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                OutlinedInputFieldsGroup(
                  inputFields: [
                    OutlinedInputField(
                      hintText: "Name",
                      writtenText: state.contact.nameData.firstName,
                      autoFocus: true,
                      textCapitalization: TextCapitalization.words,
                      prefixIcon: const Icon(Icons.person_outline),
                      // focusNode: FocusNode(),
                      onChangedValidator: (value) {
                        context.read<AddContactBloc>().add(
                            AddContactEvent.updateNameData(state
                                .contact.nameData
                                .copyWith(firstName: value)));
                        return null;
                      },
                    ),
                    OutlinedInputField(
                      hintText: "Surname",
                      writtenText: state.contact.nameData.surnames,
                      textCapitalization: TextCapitalization.words,
                      // focusNode: FocusNode(),

                      onChangedValidator: (value) {
                        context.read<AddContactBloc>().add(
                            AddContactEvent.updateNameData(state
                                .contact.nameData
                                .copyWith(surnames: value)));
                        return null;
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                LabelObjectBuilder(
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
                LabelObjectBuilder(
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
                BuildCompaniesFields(state: state, context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildCompaniesFields extends StatelessWidget {
  const BuildCompaniesFields({
    Key key,
    @required this.state,
    @required this.context,
  }) : super(key: key);

  final AddContactState state;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return OutlinedInputFieldsGrowableList(
      fieldPrefabs: const [
        OutlinedInputField(
          hintText: "Company",
          prefixIcon: Icon(Icons.business),
          textCapitalization: TextCapitalization.words,
          topPadding: 3,
        ),
        OutlinedInputField(
          hintText: "Title",
          textCapitalization: TextCapitalization.words,
        ),
      ],
      writtenTexts: state.contact.companies
          .map((comp) => [comp.name, comp.title])
          .toList(),
      onChangesValidators: [
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies[index].copyWith(name: value), index));
          return null;
        },
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies[index].copyWith(title: value), index));
          return null;
        },
      ],
      onAddWidget: () => context.read<AddContactBloc>().add(
            const AddContactEvent.addCompany(),
          ),
      onRemoveWidget: (index) => context.read<AddContactBloc>().add(
            AddContactEvent.deleteCompany(index),
          ),
    );
  }
}
