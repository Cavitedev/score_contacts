import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';

import 'outlined_dropdown_button.dart';
import 'outlined_input_field.dart';

class TextFieldWithDropdown extends StatefulWidget {
  final ILabelObject<String> labelObject;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final Function(String) onChangedValidator;
  final Function(String) onLabelChanged;
  final List<TextInputFormatter> inputFormatters;

  const TextFieldWithDropdown(
      {Key key,
      @required this.labelObject,
      @required this.hintText,
      this.autoCorrect = false,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none,
      this.prefixIcon,
      this.onChangedValidator,
      this.inputFormatters,
      this.onLabelChanged})
      : super(key: key);

  @override
  _TextFieldWithDropdownState createState() => _TextFieldWithDropdownState();
}

class _TextFieldWithDropdownState extends State<TextFieldWithDropdown> {
  FocusNode focusNode;
  String Function(String) changeValidatorWithCheckEmpty;
  bool isActive = false;

  @override
  void initState() {
    focusNode = FocusNode();
    changeValidatorWithCheckEmpty = (str) {
      setState(() {
        isActive = str.isNotEmpty;
      });
      if (widget.onChangedValidator != null) {
        widget.onChangedValidator(str);
      }
      return "";
    };
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.labelObject.value != null) {
      isActive = widget.labelObject.value.isNotEmpty;
    }
    return Row(
      children: <Widget>[
        Expanded(
          child: OutlinedDropdownButton(
            items: widget.labelObject.otherLabels,
            focusNode: focusNode,
            isActive: isActive,
            onLabelChanged: widget.onLabelChanged,
            selected: widget.labelObject.label,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          flex: 2,
          child: OutlinedInputField(
            writtenText: widget.labelObject.value ?? "",
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            autoCorrect: widget?.autoCorrect,
            keyboardType: widget.keyboardType,
            textCapitalization: widget.textCapitalization,
            onChangedValidator: changeValidatorWithCheckEmpty,
            focusNode: focusNode,
            inputFormatters: widget.inputFormatters,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
