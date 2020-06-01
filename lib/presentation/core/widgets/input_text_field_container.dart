import 'package:flutter/material.dart';

class InputtextFieldContainer extends StatefulWidget {
  final Widget child;

  const InputtextFieldContainer({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _InputtextFieldContainerState createState() =>
      _InputtextFieldContainerState();
}

class _InputtextFieldContainerState extends State<InputtextFieldContainer> {
  bool isHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isHighlighted = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isHighlighted = false;
        });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.5),
                  blurRadius: 20,
                  offset: Offset(0, 3),
                )
              ],
              border: isHighlighted
                  ? Border.all(
                      color: Theme.of(context).highlightColor, width: 2)
                  : null),
          child: widget.child),
    );
  }
}
