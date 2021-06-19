import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scorecontacts/core/app_localization.dart';
import 'package:scorecontacts/presentation/core/widgets/circular_button_image.dart';

class ImagePickUp extends StatefulWidget {
  final Function(PickedFile?, bool errors) onImageReturned;
  final String? backgroundUrl;

  const ImagePickUp({required this.onImageReturned, this.backgroundUrl, Key? key})
      : super(key: key);

  @override
  _ImagePickUpState createState() => _ImagePickUpState();
}

class _ImagePickUpState extends State<ImagePickUp> {
  final imagePicker = ImagePicker();

  PickedFile? pickedFile;
  ImageProvider? imageProvider;

  @override
  void initState() {
    _updateImageProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CircularButtonImage(
      onPressed: () {
        getImageGalleryOrCamera(context);
      },
      decorationImage: _buildDecorationImage(),
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
              if (widget.backgroundUrl != null)
                ListTile(
                  leading: const Icon(Icons.clear),
                  title: Text(AppLocalization.of(context).translate("remove_photo")),
                  onTap: () async {
                    _onGetImage(null, errors: false);
                  },
                ),
              ListTile(
                leading: const Icon(Icons.add_a_photo_outlined),
                title: Text(AppLocalization.of(context).translate("take_photo")),
                onTap: () async {
                  final PickedFile? photo = await imagePicker.getImage(
                    source: ImageSource.camera,
                  );
                  _onGetImage(photo);
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_photo_alternate_outlined),
                title: Text(
                    AppLocalization.of(context).translate("choose_photo_from_gallery")),
                onTap: () async {
                  final PickedFile? photo = await imagePicker.getImage(
                    source: ImageSource.gallery,
                  );

                  _onGetImage(photo);
                },
              ),
            ],
          );
        });
  }

  void _onGetImage(PickedFile? photo, {bool errors = true}) {
    pickedFile = photo;
    _updateImageProvider();
    Navigator.of(context).pop();
    widget.onImageReturned(photo, photo == null && errors);
  }

  DecorationImage? _buildDecorationImage() {
    if (imageProvider == null) {
      return null;
    }

    return DecorationImage(
      fit: BoxFit.scaleDown,
      repeat: ImageRepeat.repeat,
      image: imageProvider!,
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
    );
  }

  void _updateImageProvider() {
    if (pickedFile == null && widget.backgroundUrl == null) {
      return;
    }

    if (pickedFile != null) {
      pickedFile!.readAsBytes().then((bytes) {
        setState(() {
          imageProvider = MemoryImage(bytes);
        });
      });
    } else {
      setState(() {
        imageProvider = NetworkImage(widget.backgroundUrl!);
      });
    }
  }
}
