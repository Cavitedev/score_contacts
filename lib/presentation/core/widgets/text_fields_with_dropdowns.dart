import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scorecontacts/presentation/core/widgets/text_field_with_dropdown.dart';

class TextFieldsWithDropdowns extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final String Function(String) onChangedValidator;
  final List<TextInputFormatter> inputFormatters;

  const TextFieldsWithDropdowns({
    Key key,
    @required this.items,
    @required this.hintText,
    this.autoCorrect = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.onChangedValidator,
    this.inputFormatters,
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
            .map((onIsActiveChanged) => _buildField(widget, onIsActiveChanged))
            .toList());
  }

  void _onActiveChange() {
    final int activeFields =
        areActive.where((element) => element == true).length;
    if (activeFields >= onIsActiveChangedList.length) {
      setState(() {
        _addWidget();
      });
    } else if (activeFields < onIsActiveChangedList.length - 1) {
      setState(() {
        _removeLastWidget();
      });
    }
  }

  void _addWidget() {
    areActive.add(false);
    final int pos = onIsActiveChangedList.length;
    onIsActiveChangedList.add((isActive) {
      areActive[pos] = isActive;
      _onActiveChange();
    });
  }

  void _removeLastWidget() {
    areActive.removeLast();
    onIsActiveChangedList.removeLast();
  }

  TextfieldWithDropdown _buildField(
      TextFieldsWithDropdowns widget, Function(bool) onIsActiveChanged) {
    return TextfieldWithDropdown(
      items: widget.items,
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
