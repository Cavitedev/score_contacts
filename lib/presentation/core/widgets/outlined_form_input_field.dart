import 'package:flutter/material.dart';

class OutlinedFormInputField extends StatefulWidget {
  final String hintText;
  final bool autoFocus;
  final bool autoCorrect;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final String Function(String) validator;

  OutlinedFormInputField({
    Key key,
    @required this.hintText,
    this.autoCorrect = false,
    this.autoFocus = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  _OutlinedFormInputFieldState createState() => _OutlinedFormInputFieldState();
}

class _OutlinedFormInputFieldState extends State<OutlinedFormInputField> {
  bool hasText = false;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      onChanged: (str) {
        if (hasText != str.length > 0) {
          setState(() {
            hasText = str.length > 0;
          });
        }
        widget.onChanged(str);
      },
      validator: (str) {
        return widget.validator(str);
      },
      autocorrect: widget.autoCorrect,
      autofocus: widget.autoFocus,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          fillColor: Theme.of(context).textSelectionColor,
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
      hasText = false;
    });
  }
}
