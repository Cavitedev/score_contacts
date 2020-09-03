import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/email.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/phone.dart';
import 'package:scorecontacts/presentation/contacts/add_contacts/widgets/label_object_builder.dart';
import 'package:scorecontacts/presentation/core/formatters/number_text_input_formatter.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class AddContactForm extends StatelessWidget {
  const AddContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddContactBloc, AddContactState>(

      builder: (context, state) =>
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    OutlinedInputField(
                      hintText: "Name",
                      autoFocus: true,
                      textCapitalization: TextCapitalization.words,
                      prefixIcon: const Icon(Icons.person_outline),
                      onChangedValidator: (value) {
                        context.bloc<AddContactBloc>().add(
                            AddContactEvent.updateNameData(
                                state.contact.nameData.copyWith(
                                    firstName: value)));
                        return null;
                      },
                    ),
                    OutlinedInputField(
                        hintText: "Surname",
                        textCapitalization: TextCapitalization.words,
                        onChangedValidator: (value) {
                          context.bloc<AddContactBloc>().add(
                              AddContactEvent.updateNameData(
                                  state.contact.nameData.copyWith(
                                      surnames: value)));
                          return null;
                        }),
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
                    OutlinedInputField(
                      hintText: "Company",
                      prefixIcon: Icon(Icons.business),
                      textCapitalization: TextCapitalization.words,
                      onChangedValidator: (value) {
                        context.bloc<AddContactBloc>().add(
                            AddContactEvent.updateCompany(
                                state.contact.companies[0].copyWith(
                                    name: value)));
                        return null;
                      },
                    ),
                    OutlinedInputField(
                      hintText: "Title",
                      textCapitalization: TextCapitalization.words,
                      onChangedValidator: (value) {
                        context.bloc<AddContactBloc>().add(
                            AddContactEvent.updateCompany(
                                state.contact.companies[0].copyWith(
                                    title: value)));
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}