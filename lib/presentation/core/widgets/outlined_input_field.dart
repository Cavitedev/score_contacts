import 'package:flutter/material.dart';

class OutlinedInputField extends StatefulWidget {
  final String hintText;
  final bool autoFocus;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  /// return null to not show any helper
  final String Function(String) onChangedValidator;

  OutlinedInputField({
    Key key,
    @required this.hintText,
    this.autoCorrect = false,
    this.autoFocus = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.onChangedValidator,
    this.prefixIcon,
  }) : super(key: key);

  @override
  _OutlinedInputFieldState createState() => _OutlinedInputFieldState();
}

class _OutlinedInputFieldState extends State<OutlinedInputField> {
  bool hasText = false;
  TextEditingController textEditingController = TextEditingController();
  bool showHelperText = false;
  String helpText;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (str) {
        setState(() {
          helpText = widget.onChangedValidator(str);
          hasText = str.length > 0;
        });
      },
      onEditingComplete: () {
        setState(() {
          showHelperText = true;
        });
      },
      autocorrect: widget.autoCorrect,
      enableSuggestions: widget.autoCorrect,
      autofocus: widget.autoFocus,
      keyboardType: widget.keyboardType,
      textCapitalization: widget.textCapitalization,
      showCursor: true,
      decoration: InputDecoration(
          labelText: widget.hintText,
          filled: true,
          fillColor: Theme.of(context).textSelectionColor,
          helperText: (showHelperText) ? helpText : null,
          prefixIcon: widget.prefixIcon,
          suffixIcon: hasText
              ? InkWell(
                  onTap: () {
                    _clearText();
                  },
                  child: Icon(Icons.delete),
                )
              : null,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                  color: Theme.of(context).highlightColor, width: 2)),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          )),
    );
  }

  void _clearText() {
    textEditingController.clear();
    setState(() {
      helpText = widget.onChangedValidator("");
      hasText = false;
    });
  }
}
