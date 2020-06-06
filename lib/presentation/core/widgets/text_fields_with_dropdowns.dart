import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/domain/features/user/contacts_data/properties/i_label_object.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_with_dropdown.dart';

class TextFieldsWithDropdowns extends StatefulWidget {
  final List<ILabelObject> labelObjects;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final Function(String) onChangedValidator;
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
  }) : super(key: key);

  @override
  _TextFieldsWithDropdownsState createState() =>
      _TextFieldsWithDropdownsState();
}

class _TextFieldsWithDropdownsState extends State<TextFieldsWithDropdowns> {
  List<bool> areActive = <bool>[false];

  List<Function(bool)> onIsActiveChangedList;

  @override
  void initState() {
    onIsActiveChangedList = <Function(bool)>[
      (isActive) {
        areActive[0] = isActive;
        _onActiveChange();
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: onIsActiveChangedList
          .asMap()
          .map((i, activeChange) => MapEntry(
              i,
              _buildField(
                widget: widget,
                onIsActiveChanged: activeChange,
                pos: i,
              )))
          .values
          .cast<Widget>()
          .toList(),
    );
  }

  void _onActiveChange() {
    final int activeFields =
        areActive.where((element) => element == true).length;
    if (activeFields >= onIsActiveChangedList.length) {
      setState(() {
        _addWidget();
      });
    } else if (activeFields < onIsActiveChangedList.length - 1) {
      final int posInactiveWidget = areActive.indexWhere((
          isActive) => isActive == false);
      setState(() {
        _removeWidget(pos: posInactiveWidget);
      });
    }
  }

  void _addWidget() {
    widget?.onAddWidget();
    areActive.add(false);
    final int pos = onIsActiveChangedList.length;
    onIsActiveChangedList.add((isActive) {
      areActive[pos] = isActive;
      _onActiveChange();
    });
  }

  void _removeWidget({@required int pos}) {
    widget?.onRemoveWidget(pos);
    areActive.removeAt(pos);
    onIsActiveChangedList.removeAt(pos);
  }

  TextfieldWithDropdown _buildField({
    @required TextFieldsWithDropdowns widget,
    @required Function(bool) onIsActiveChanged,
    @required int pos,
  }) {
    return TextfieldWithDropdown(
      labelObject: widget.labelObjects[pos],
      hintText: widget.hintText,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      onChangedValidator: widget.onChangedValidator,
      textCapitalization: widget.textCapitalization,
      autoCorrect: widget.autoCorrect,
      prefixIcon: widget.prefixIcon,
      key: widget.key,
      onIsActiveChanged: onIsActiveChanged,
    );
  }
}
