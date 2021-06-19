import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double blurRadius;
  const TextFieldContainer({
    Key? key,
    required this.child,
    this.margin = const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.blurRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: Theme.of(context).inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(36),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColorDark.withOpacity(0.5),
              blurRadius: blurRadius,
              offset: const Offset(0, 3),
            )
          ],

        ),
        child: child
    );
  }
}