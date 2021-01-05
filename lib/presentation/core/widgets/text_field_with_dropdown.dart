import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final Icon prefixIcon;
  final Function(String) onChangedValidator;
  final Function(String) onLabelChanged;
  final List<TextInputFormatter> inputFormatters;
  final FocusNode focusNode;

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
      this.onLabelChanged,
      this.focusNode})
      : super(key: key);

  @override
  _TextFieldWithDropdownState createState() => _TextFieldWithDropdownState();
}

class _TextFieldWithDropdownState extends State<TextFieldWithDropdown> {
  FocusNode focusNode;
  String Function(String) changeValidatorWithCheck;
  bool isActive = false;

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
      if (widget.onChangedValidator != null) {
        widget.onChangedValidator(str);
      }
      return "";
    };
    super.initState();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      focusNode.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.labelObject.value != null) {
      isActive = widget.labelObject.value.isNotEmpty;
    }

    final String hint = _getHint() ?? "";

    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: OutlinedDropdownButton(
            items: widget.labelObject.otherLabels,
            focusNode: focusNode,
            isActive: isActive,
            onLabelChanged: widget.onLabelChanged,
            topMargin: TextFieldWithDropdown.topMargin,
            selected: widget.labelObject.label,
            expandBottomMargin: hint != null && hint.isNotEmpty,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          flex: 5,
          child: OutlinedInputField(
            topPadding: TextFieldWithDropdown.topMargin,
            writtenText: widget.labelObject.value ?? "",
            helperText: hint,
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            autoCorrect: widget?.autoCorrect,
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
