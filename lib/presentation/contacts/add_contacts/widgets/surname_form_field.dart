import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/form/outlined_input_field.dart';

class SurnameFormField extends StatefulWidget {
  final AddContactState state;

  const SurnameFormField({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  _SurnameFormFieldState createState() => _SurnameFormFieldState();
}

class _SurnameFormFieldState extends State<SurnameFormField> {
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
        final String val = state.contact.nameData.surnames ?? "";
        textEditingController.value = TextEditingValue(
            text: val, selection: TextSelection.collapsed(offset: val.length));
      },
      child: OutlinedInputField(
        hintText: AppLocalization.of(context).translate("surname"),
        textEditingController: textEditingController,
        textCapitalization: TextCapitalization.words,
        onChangedValidator: (value) {
          context.read<AddContactBloc>().add(AddContactEvent.updateNameData(
              widget.state.contact.nameData.copyWith(surnames: value)));
          return "";
        },
      ),
    );
  }
}
