import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButtonImage extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  const CircularButtonImage({
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Ink(
        width: 56,
        height: 56,
        decoration: ShapeDecoration(
          color: Theme.of(context).primaryColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          icon:  Icon(
            icon,
            color: Colors.white,
          ),
          splashRadius: 32,
          onPressed: () {
            onPressed();
          },
        ),
      ),
    );
  }
}
