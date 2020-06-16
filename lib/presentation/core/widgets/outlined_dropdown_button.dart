import 'package:flutter/material.dart';
import 'package:scorecontacts/presentation/core/widgets/alert_dialogue_cancel_ok.dart';

const double helperTextSep = 22;

class OutlinedDropdownButton extends StatefulWidget {
  final List<String> items;
  final FocusNode focusNode;
  final bool isActive;
  final Function(String) onLabelChanged;
  final double topMargin;

  /// With Radius.circular(12) by default
  final BorderRadius borderRadius;
  final String selected;

  final bool expandBottomMargin;

  const OutlinedDropdownButton({
    Key key,
    @required this.items,
    @required this.focusNode,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.isActive = false,
    this.onLabelChanged,
    this.selected,
    this.topMargin = 0,
    this.expandBottomMargin = false,
  }) : super(key: key);

  @override
  _OutlinedDropdownButtonState createState() => _OutlinedDropdownButtonState();
}

class _OutlinedDropdownButtonState extends State<OutlinedDropdownButton>
    with TickerProviderStateMixin {
  String selected;
  String lastSelected;
  String customSelected;
  List<DropdownMenuItem<String>> _items;

  Animation<double> opacityAnimation;
  AnimationController opacityAnimationController;

  _OutlinedDropdownButtonState();

  @override
  void initState() {
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

    widget.focusNode.addListener(outlineFocusListener);
    super.initState();
  }

  void outlineFocusListener() {
    setState(() {
      widget.focusNode.hasFocus
          ? opacityAnimationController.forward()
          : opacityAnimationController.reverse();
    });
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(outlineFocusListener);
    opacityAnimationController.dispose();
    super.dispose();
  }

  void _showDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialogueCancelOK(
        title: "Custom label name",
        hintText: "Label name",
        onCancel: () {
          setState(() {
            selected = lastSelected;
            customSelected = null;
          });
          if (widget.onLabelChanged != null) {
            widget.onLabelChanged(lastSelected);
          }
        },
        onSubmit: (String text) {
          customSelected = text;
          selected = customSelected;
          if (widget.onLabelChanged != null) {
            widget.onLabelChanged(selected);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected != null) {
      selected = widget.selected;
    } else {
      selected = widget.items[0];
    }
    final List<DropdownMenuItem<String>> itemsRendered = customSelected == null
        ? _items
        : [
      DropdownMenuItem(
        value: customSelected,
        child: Text(customSelected),
      ),
      ..._items
    ];
    return AnimatedBuilder(
      animation: opacityAnimationController,
      builder: (context, child) =>
          Container(
            margin: EdgeInsets.only(top: widget.topMargin,
                bottom: widget.expandBottomMargin == true ? helperTextSep : 0),
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
                    customSelected = null;
                  });
                  if (widget.onLabelChanged != null) {
                    widget.onLabelChanged(value);
                  }
                },
                selectedItemBuilder: (context) =>
                    itemsRendered
                        .map((item) =>
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.value,
                            style: widget.focusNode.hasFocus || widget.isActive
                                ? Theme
                                .of(context)
                                .textTheme
                                .subtitle1
                                : Theme
                                .of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(
                                color: Theme
                                    .of(context)
                                    .disabledColor),
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
                items: itemsRendered),
          ),
    );
  }
}
