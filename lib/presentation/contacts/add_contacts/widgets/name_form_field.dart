import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class NameFormField extends StatefulWidget {
  final AddContactState state;

  const NameFormField({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  _NameFormFieldState createState() => _NameFormFieldState();
}

class _NameFormFieldState extends State<NameFormField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddContactBloc, AddContactState>(
      listenWhen: (p, c) => p.isEditting != c.isEditting,
      listener: (context, state) {
        final String val = state.contact.nameData.firstName ?? "";

        textEditingController.value = TextEditingValue(
            text: val, selection: TextSelection.collapsed(offset: val.length));
      },
      child: OutlinedInputField(
        hintText: AppLocalization.of(context).translate("name"),
        textEditingController: textEditingController,
        autoFocus: true,
        textCapitalization: TextCapitalization.words,
        prefixIcon: const Icon(Icons.person_outline),
        onChangedValidator: (value) {
          context.read<AddContactBloc>().add(AddContactEvent.updateNameData(
              widget.state.contact.nameData.copyWith(firstName: value)));
          return "";
        },
      ),
    );
  }
}
