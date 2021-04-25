
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'contact_image.freezed.dart';

@freezed
class ContactImage with _$ContactImage {

@Assert('url != null || file != null', 'This class requires either url or File')
  const factory ContactImage({
    String? url,
    PickedFile? file,
  }) = _ContactImage;


}