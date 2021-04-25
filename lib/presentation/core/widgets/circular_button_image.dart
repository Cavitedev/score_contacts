import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularButtonImage extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final DecorationImage? decorationImage;

  const CircularButtonImage({
    required this.onPressed,
    required this.icon,
    this.decorationImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Ink(
        width: 56,
        height: 56,
        decoration: ShapeDecoration(
          image: decorationImage,
          color: Theme.of(context).primaryColor,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(
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
