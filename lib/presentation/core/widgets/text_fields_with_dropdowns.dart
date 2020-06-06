import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_with_dropdown.dart';

class TextFieldsWithDropdowns extends StatelessWidget {
  final List<ILabelObject<String>> labelObjects;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final Function(int, String) onChangedValidator;
  final Function(int, String) onLabelChanged;
  final List<TextInputFormatter> inputFormatters;
  final Function onAddWidget;
  final Function(int) onRemoveWidget;

  const TextFieldsWithDropdowns({
    Key key,
    @required this.labelObjects,
    @required this.hintText,
    this.autoCorrect = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.onChangedValidator,
    this.inputFormatters,
    this.onAddWidget,
    this.onRemoveWidget,
    this.onLabelChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _onActiveChange();
    return Column(children: _buildFields());
  }

  void _onActiveChange() {
    final int activeFields = labelObjects
        .where((labelObject) =>
            labelObject.value != null && labelObject.value.isNotEmpty)
        .length;
    if (activeFields >= labelObjects.length) {
      _addWidget();
    } else if (activeFields < labelObjects.length - 1) {
      final int posInactiveWidget = labelObjects.indexWhere((labelObject) =>
          labelObject.value != null && labelObject.value.isEmpty);

      _removeWidget(pos: posInactiveWidget);
    }
  }

  void _addWidget() {
    if (onAddWidget != null) {
      onAddWidget();
    }
  }

  void _removeWidget({@required int pos}) {
    if (onRemoveWidget != null) {
      onRemoveWidget(pos);
    }
  }

  List<TextFieldWithDropdown> _buildFields() {
    final List<TextFieldWithDropdown> output = [];
    for (int i = 0; i < labelObjects.length; i++) {
      output.add(_buildField(pos: i));
    }
    return output;
  }

  TextFieldWithDropdown _buildField({
    @required int pos,
  }) {
    return TextFieldWithDropdown(
      labelObject: labelObjects[pos],
      hintText: hintText,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      onChangedValidator: (str) {
        if (onChangedValidator != null) {
          onChangedValidator(pos, str);
        }
      },
      onLabelChanged: (str) {
        if (onLabelChanged != null) {
          onLabelChanged(pos, str);
        }
      },
      textCapitalization: textCapitalization,
      autoCorrect: autoCorrect,
      prefixIcon: prefixIcon,
    );
  }
}
