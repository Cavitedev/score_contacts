import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'contact_image.freezed.dart';

@freezed
class ContactImage with _$ContactImage {
  @Assert('url != null || file != null || deleted == true',
      'This class requires either url or File unless it is deleted')
  const factory ContactImage({
    String? url,
    PickedFile? file,
    @Default(false) bool deleted,
  }) = _ContactImage;

  factory ContactImage.deleted() => const ContactImage(
    deleted: true
  );

}
