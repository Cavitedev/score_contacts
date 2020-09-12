import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/outlined_input_field.dart';

class OutlinedInputFieldsGroup extends StatefulWidget {
  final double topPadding;
  final List<OutlinedInputField> inputFields;
  final FocusNode focusNode;

  const OutlinedInputFieldsGroup({
    Key key,
    this.topPadding,
    this.inputFields,
    this.focusNode,
  }) : super(key: key);

  @override
  _OutlinedInputFieldsGroupState createState() =>
      _OutlinedInputFieldsGroupState();
}

class _OutlinedInputFieldsGroupState extends State<OutlinedInputFieldsGroup> {
  List<FocusNode> focusNodes;
  FocusAttachment parent;
  bool isOutlined = false;

  @override
  void initState() {
    focusNodes = Iterable<FocusNode>.generate(widget.inputFields.length, (i) {
      final FocusNode focusNode = FocusNode();

      focusNode.addListener(() {
        if (isOutlined != _hasFocus()) {
          setState(() {
            isOutlined = _hasFocus();
          });
        }
      });

      return focusNode;
    }).toList();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<OutlinedInputField> inputFields =
        Iterable<int>.generate(widget.inputFields.length)
            .map((i) => widget.inputFields[i].copyWith(
                focusNode: focusNodes[i],
                outlineInputBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide.none,
                ),
                //Big enough to not overlap with container
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                )))
            .toList();

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).textSelectionColor,
        border: isOutlined
            ? BorderDirectional(
                bottom: BorderSide(
                    width: 2, color: Theme.of(context).highlightColor),
                top: BorderSide(
                    width: 2, color: Theme.of(context).highlightColor),
                start: BorderSide(
                    width: 2, color: Theme.of(context).highlightColor),
                end: BorderSide(
                    width: 2, color: Theme.of(context).highlightColor),
              )
            : null,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColorDark.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: inputFields,
      ),
    );
  }

  bool _hasFocus() => focusNodes.any((focusNode) => focusNode.hasPrimaryFocus);
}
