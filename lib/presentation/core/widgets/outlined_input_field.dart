import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutlinedInputField extends StatefulWidget {
  final String hintText;
  final bool autoFocus;
  final bool autoCorrect;
  final double topPadding;

  /// With Radius.circular(12) by default
  final BorderRadius borderRadius;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Icon prefixIcon;
  final FocusNode focusNode;
  final List<TextInputFormatter> inputFormatters;
  final String writtenText;
  final String helperText;

  /// return null to not show any helper
  final String Function(String) onChangedValidator;

  const OutlinedInputField({
    Key key,
    @required this.hintText,
    this.autoCorrect = false,
    this.autoFocus = false,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.onChangedValidator,
    this.prefixIcon,
    this.focusNode,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.inputFormatters,
    this.writtenText,
    this.topPadding = 0,
    this.helperText = "",
  }) : super(key: key);

  @override
  _OutlinedInputFieldState createState() => _OutlinedInputFieldState();
}

class _OutlinedInputFieldState extends State<OutlinedInputField> {
  bool hasText = false;
  TextEditingController textEditingController;
  bool showHelperText = false;
  String helpText;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.writtenText != null) {
      textEditingController.value = TextEditingValue(
          text: widget.writtenText,
          selection:
          TextSelection.collapsed(offset: widget.writtenText.length));

      hasText = widget.writtenText.isNotEmpty;
    }
    return Container(
      padding: EdgeInsets.only(top: widget.topPadding),
      child: TextField(
        controller: textEditingController,
        onChanged: (str) {
          setState(() {
            hasText = str.isNotEmpty;
            helpText = widget.onChangedValidator == null
                ? null
                : widget.onChangedValidator(str);
          });
        },
        focusNode: widget.focusNode,
        autocorrect: widget.autoCorrect,
        enableSuggestions: widget.autoCorrect,
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textCapitalization: widget.textCapitalization,
        showCursor: true,
        decoration: InputDecoration(
            labelText: widget.hintText,
            filled: true,
            fillColor: Theme
                .of(context)
                .textSelectionColor,
            helperText: (widget.helperText.isNotEmpty)
                ? widget.helperText
                : (helpText != null && helpText.isNotEmpty) ? helpText : null,
            prefixIcon: widget.prefixIcon,
            suffixIcon: hasText
                ? InkWell(
              onTap: () {
                _clearText();
              },
              child: Icon(Icons.delete),
            )
                : null,
            contentPadding: const EdgeInsets.only(top: 8, bottom: 8, left: 9),
            focusedBorder: OutlineInputBorder(
                borderRadius: widget.borderRadius,
                borderSide: BorderSide(
                    color: Theme
                        .of(context)
                        .highlightColor, width: 2)),
            border: OutlineInputBorder(
              borderRadius: widget.borderRadius,
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  void _clearText() {
    textEditingController.clear();
    if (widget.focusNode != null) {
      widget.focusNode.unfocus();
    }
    setState(() {
      hasText = false;
      if (widget.onChangedValidator != null) {
        helpText = widget.onChangedValidator("");
      }
    });
  }
}
