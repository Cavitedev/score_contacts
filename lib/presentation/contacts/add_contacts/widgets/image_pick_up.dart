import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_button_image.dart';

class ImagePickUp extends StatelessWidget {
  final Function(PickedFile) onImageReturned;
  final imagePicker = ImagePicker();

  ImagePickUp({
    required this.onImageReturned,
  });

  @override
  Widget build(BuildContext context) {
    return CircularButtonImage(
      onPressed: () {
        imagePicker.getImage(source: ImageSource.camera);
      },
      icon: Icons.add_a_photo_outlined,
    );
  }
}
