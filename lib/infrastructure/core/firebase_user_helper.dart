import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:scorecontacts/core/errors/infrastructure_errors.dart';
import 'package:scorecontacts/core/injection/injection.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/user_data.dart';

extension FirebaseUserToDomain on fb_auth.User {
  User toDomain() => User(uid: UniqueID.fromUniqueString(uid));
}

extension FirestoreX on FirebaseFirestore {
  DocumentReference userDocument() {
    final User user = getIt<IAuthFacade>().getUserOrCrash();
    return FirebaseFirestore.instance.collection('users').doc(user.uid.value);
  }
}

extension IAuthFacadeX on IAuthFacade{
  User getUserOrCrash(){
    final Option<User> userOption = getIt<IAuthFacade>().getSignedUser();
    return userOption.getOrElse(() => throw NotAuthenticatedError());
  }
}

extension ContactsRefenceX on DocumentReference {
  CollectionReference<Map<String, dynamic>> get contactsCollection => collection('contacts');
  CollectionReference<Map<String, dynamic>> get diaryEntryCollection => collection('diary/entries');
}
