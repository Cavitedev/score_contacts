import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickUp extends StatelessWidget {
  const ImagePickUp();

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
          icon: const Icon(Icons.add_a_photo_outlined, color: Colors.white,
          ),
          splashRadius: 32,
          onPressed: () {
            ImagePicker().getImage(source: ImageSource.camera);

          },
        ),
      ),
    );
  }
}
