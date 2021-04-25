import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_button_image.dart';

class ImagePickUp extends StatelessWidget {
  final Function(PickedFile?) onImageReturned;
  final imagePicker = ImagePicker();

  ImagePickUp({
    required this.onImageReturned,
  });

  @override
  Widget build(BuildContext context) {
    return CircularButtonImage(
      onPressed: () {
        getImageGalleryOrCamera(context);
      },
      icon: Icons.add_a_photo_outlined,
    );
  }

  void getImageGalleryOrCamera(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.add_a_photo_outlined),
                title:
                    Text(AppLocalization.of(context).translate("take_photo")),
                onTap: () async {
                  final PickedFile? photo =
                      await imagePicker.getImage(source: ImageSource.camera);
                  onImageReturned(photo);
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_photo_alternate_outlined),
                title: Text(AppLocalization.of(context)
                    .translate("choose_photo_from_gallery")),
                onTap: () async {
                  final PickedFile? photo =
                      await imagePicker.getImage(source: ImageSource.gallery);
                  onImageReturned(photo);
                },
              ),
            ],
          );
        });
  }
}
