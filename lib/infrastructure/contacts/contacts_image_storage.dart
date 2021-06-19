import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_failure.dart';
import 'package:scorecontacts/infrastructure/core/firebase_user_helper.dart';
import 'package:scorecontacts/infrastructure/firebase_core/codes.dart';

import 'contact_dtos.dart';

@LazySingleton()
class ContactsImageStorage {
  final FirebaseStorage firestorage;
  final IAuthFacade authFacade;

  ContactsImageStorage(this.firestorage, this.authFacade);

  Reference getFirestorageRef(Contact contact) {
    final String userId = authFacade.getUserOrCrash().uid.value;
    final Reference storageRef =
        firestorage.ref("Users/$userId/contacts/${contact.id.value}/avatar.jpg");
    return storageRef;
  }

  Future<Either<ContactsFailure, String?>> uploadImage(Contact contact) async {
    final PickedFile? imageFile = contact.contactImage?.file;
    if (imageFile == null) {
      return right(null);
    }
    final Reference storageRef = getFirestorageRef(contact);
    final Uint8List imageBytes = await imageFile.readAsBytes();
    final UploadTask uploadTask = storageRef.putData(imageBytes);
    try {
      await uploadTask.whenComplete(() {});
      final url = await uploadTask.snapshot.ref.getDownloadURL();
      return right(url);
    } catch (e) {
      if (e is FirebaseException && e.code == UNATHORIZED) {
        return left(const ContactsFailure.insufficientPermissions());
      }
      rethrow;
    }
  }

  Future<Either<ContactsFailure, ContactDTO>> updateImageOnDTO(
      Contact contact, ContactDTO contactDTO) async {
    if (contact.contactImage?.deleted ?? false) {
      await deleteImage(contact);
      return right(contactDTO.copyWith(imageUrl: null));
    }

    final Either<ContactsFailure, String?> eitherImageUrl = await uploadImage(contact);
    return eitherImageUrl.fold(
      (f) => left(f),
      (imageUrl) {
        if (imageUrl != null) {
          return right(contactDTO.copyWith(imageUrl: imageUrl));
        }

        return right(contactDTO);
      },
    );
  }

  Future<void> deleteImage(Contact contact) {
    if (contact.contactImage == null) {
      return Future.value(null);
    }
    final Reference storageRef = getFirestorageRef(contact);

    return storageRef.delete();
  }
}
