import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scorecontacts/application/contacts/add_contact/add_contact_bloc.dart';
import 'package:scorecontacts/domain/core/validators/i_hint_validator.dart';
import 'package:scorecontacts/domain/user/contacts_data/properties/i_label_object.dart';

import 'outlined_dropdown_button.dart';
import 'outlined_input_field.dart';

class TextFieldWithDropdown extends StatefulWidget {
  /// space for label text
  static const double topMargin = 3;
  final ILabelObject labelObject;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon? prefixIcon;
  final Function(String)? onChangedValidator;
  final Function(String)? onLabelChanged;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  const TextFieldWithDropdown({
    Key? key,
    required this.labelObject,
    required this.hintText,
    this.autoCorrect = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.onChangedValidator,
    this.inputFormatters,
    this.onLabelChanged,
    this.focusNode,
  }) : super(key: key);

  @override
  _TextFieldWithDropdownState createState() => _TextFieldWithDropdownState();
}

class _TextFieldWithDropdownState extends State<TextFieldWithDropdown> {
  late FocusNode? focusNode;
  late String Function(String)? changeValidatorWithCheck;
  late TextEditingController textEditingController;
  bool isActive = false;
  bool updateName = false;

  @override
  void initState() {
    if (widget.focusNode == null) {
      focusNode = FocusNode();
    } else {
      focusNode = widget.focusNode;
    }
    changeValidatorWithCheck = (str) {
      setState(() {
        isActive = str.isNotEmpty;
      });
      widget.onChangedValidator?.call(str);
      return "";
    };
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    focusNode?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.labelObject.value != null) {
      isActive = widget.labelObject.value!.isNotEmpty;
    }
    if (updateName) {
      textEditingController.text = widget.labelObject.value ?? "";
      updateName = false;
    }
    final String hint = _getHint();

    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: OutlinedDropdownButton(
            items: widget.labelObject.otherLabels!,
            focusNode: focusNode!,
            isActive: isActive,
            onLabelChanged: widget.onLabelChanged,
            topMargin: TextFieldWithDropdown.topMargin,
            selected: widget.labelObject.label,
            expandBottomMargin: hint.isNotEmpty,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          flex: 5,
          child: BlocListener<AddContactBloc, AddContactState>(
            listenWhen: (p, n) => p.isEditting != n.isEditting,
            listener: (context, state) {
             updateName = true; //Wait for next build to grab the correct value
            },
            child: OutlinedInputField(
              topPadding: TextFieldWithDropdown.topMargin,
              textEditingController: textEditingController,
              helperText: hint,
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              autoCorrect: widget.autoCorrect,
              keyboardType: widget.keyboardType,
              textCapitalization: widget.textCapitalization,
              onChangedValidator: changeValidatorWithCheck,
              focusNode: focusNode,
              inputFormatters: widget.inputFormatters,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
          ),
        ),
      ],
    );
  }

  String _getHint() {
    if (widget.labelObject is IHintValidator) {
      return (widget.labelObject as IHintValidator)
          .hintValidate(widget.labelObject.value)
          .message;
    }
    return "";
  }
}
