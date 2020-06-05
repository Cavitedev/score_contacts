import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';

class OutlinedDropdownButton extends StatefulWidget {
  final List<String> items;
  final FocusNode focusNode;

  /// With Radius.circular(12) by default
  final BorderRadius borderRadius;

  const OutlinedDropdownButton({
    Key key,
    @required this.items,
    @required this.focusNode,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  }) : super(key: key);

  @override
  _OutlinedDropdownButtonState createState() => _OutlinedDropdownButtonState();
}

class _OutlinedDropdownButtonState extends State<OutlinedDropdownButton>
    with TickerProviderStateMixin {
  String selected;
  String lastSelected;
  List<DropdownMenuItem<String>> _items;

  Animation<double> opacityAnimation;
  AnimationController opacityAnimationController;

  _OutlinedDropdownButtonState();

  @override
  void initState() {
    selected = widget.items[0];
    _items = [
      ...widget.items
          .map((String item) => DropdownMenuItem(
                value: item,
                child: Text(item),
              ))
          .toList(),
      const DropdownMenuItem(
        value: "Custom",
        child: Text("Custom"),
      ),
    ];

    opacityAnimationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    final Tween<double> opacityTween = Tween<double>(begin: 0, end: 1);
    opacityAnimation = opacityTween.animate(opacityAnimationController);

    widget.focusNode.addListener(() {
      setState(() {
        widget.focusNode.hasFocus
            ? opacityAnimationController.forward()
            : opacityAnimationController.reverse();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    opacityAnimationController.dispose();
    super.dispose();
  }

  void _showDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialogueCancelOK(
            title: "Custom label name",
            hintText: "Label name",
            onCancel: () {
              setState(() {
                selected = lastSelected;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: opacityAnimationController,
      builder: (context, child) =>
          Container(
            padding: const EdgeInsets.only(left: 6),
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Theme
                  .of(context)
                  .textSelectionColor,
              borderRadius: widget.borderRadius,
              border: Border.all(
                color: Theme
                    .of(context)
                    .highlightColor
                    .withOpacity(opacityAnimation.value),
                width: 2,
//            widget.focusNode.hasFocus
              ),
            ),
            child: DropdownButton<String>(
                focusNode: widget.focusNode,
                focusColor: Theme
                    .of(context)
                    .textSelectionColor,
                onChanged: (value) {
                  widget.focusNode.requestFocus();
                  if (value == "Custom") {
                    _showDialogue(context);
                  }
                  setState(() {
                    lastSelected = selected;
                    selected = value;
                  });
                },
                selectedItemBuilder: (context) =>
                    widget.items
                        .map((item) =>
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item,
                            style: Theme
                                .of(context)
                                .textTheme
                                .subtitle1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                        .cast<Widget>()
                        .toList(),
                value: selected,
                elevation: 16,
                isExpanded: true,
                underline: Container(
                  height: 0,
                ),
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 24,
                hint: const Text("label"),
                items: _items),
          ),
    );
  }
}
