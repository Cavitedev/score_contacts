import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/presentation/core/widgets/form/outlined_input_field.dart';

class OutlinedInputFieldAddContactListener extends StatefulWidget {
  final String Function() onEditChanged;

  final OutlinedInputField outlinedInputField;

  const OutlinedInputFieldAddContactListener({
    required this.onEditChanged,
    Key? key,
    required this.outlinedInputField,
  }) : super(key: key);

  @override
  _OutlinedInputFieldAddContactListenerState createState() =>
      _OutlinedInputFieldAddContactListenerState();
}

class _OutlinedInputFieldAddContactListenerState
    extends State<OutlinedInputFieldAddContactListener> {
  bool hasChanged = false;

  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (hasChanged) {
      textEditingController.text = widget.onEditChanged();
      hasChanged = false;
    }

    return BlocListener<AddContactBloc, AddContactState>(
      listenWhen: (p, c) => p.isEditting != c.isEditting,
      listener: (context, state) {
        hasChanged = true;
      },
      child: widget.outlinedInputField.copyWith(
        textEditingController: textEditingController
      ),
    );
  }
}
