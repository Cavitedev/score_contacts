import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'outlined_dropdown_button.dart';
import 'outlined_input_field.dart';

class TextfieldWithDropdown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final String Function(String) onChangedValidator;
  final List<TextInputFormatter> inputFormatters;
  final Function(bool) onIsActiveChanged;

  const TextfieldWithDropdown(
      {Key key,
      @required this.items,
      @required this.hintText,
      this.autoCorrect = false,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none,
      this.prefixIcon,
      this.onChangedValidator,
      this.inputFormatters,
      this.onIsActiveChanged})
      : super(key: key);

  @override
  _TextfieldWithDropdownState createState() => _TextfieldWithDropdownState();
}

class _TextfieldWithDropdownState extends State<TextfieldWithDropdown> {
  FocusNode focusNode;
  String Function(String) changeValidatorWithCheckEmpty;
  bool isActive = false;

  @override
  void initState() {
    focusNode = FocusNode();
    changeValidatorWithCheckEmpty = (str) {
      setState(() {
        isActive = str.isNotEmpty;
        widget?.onIsActiveChanged(isActive);
      });
      return widget.onChangedValidator(str);
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
    return Row(
      children: <Widget>[
        Expanded(
          child: OutlinedDropdownButton(
            items: widget.items,
            focusNode: focusNode,
            isActive: isActive,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          flex: 2,
          child: OutlinedInputField(
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
