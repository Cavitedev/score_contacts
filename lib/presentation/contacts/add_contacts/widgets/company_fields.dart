
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class CompaniesFields extends StatelessWidget {
  const CompaniesFields({
    Key? key,
    required this.state,
    required this.context,
  }) : super(key: key);

  final AddContactState state;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return OutlinedInputFieldsGrowableList(
      fieldPrefabs: [
        OutlinedInputField(
          hintText: AppLocalization.of(context).translate("company"),
          prefixIcon: const Icon(Icons.business),
          textCapitalization: TextCapitalization.words,
          topPadding: 3,
        ),
        OutlinedInputField(
          hintText: AppLocalization.of(context).translate("title"),
          textCapitalization: TextCapitalization.words,
        ),
      ],
      writtenTexts: state.contact.companies!
          .map((comp) => [comp.name, comp.title])
          .toList(),
      onChangesValidators: [
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies![index].copyWith(name: value), index));
          return "";
        },
        (value, index) {
          context.read<AddContactBloc>().add(AddContactEvent.updateCompany(
              state.contact.companies![index].copyWith(title: value), index));
          return "";
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