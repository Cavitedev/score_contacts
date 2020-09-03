import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as _fbAuth;
import 'package:scorecontacts/core/errors/infrastructure_errors.dart';
import 'package:scorecontacts/domain/auth/i_auth_facade.dart';
import 'package:scorecontacts/domain/core/unique_id.dart';
import 'package:scorecontacts/domain/user/user_data.dart';
import 'package:scorecontacts/injection.dart';

extension FirebaseUserToDomain on _fbAuth.User {
  User toDomain() => User(uid: UniqueID.fromUniqueString(uid));
}

extension FirestoreX on FirebaseFirestore {
  DocumentReference userDocument() {
    final Option<User> userOption = getIt<IAuthFacade>().getSignedUser();
    final User user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.uid.value);
  }
}

extension ContactsRefenceX on DocumentReference {
  CollectionReference get contactsCollection => collection('contacts');
}
