import 'package:firebase_auth/firebase_auth.dart';
import 'package:scorecontacts/domain/features/user/user_Data.dart';

extension firebaseUserToDomain on FirebaseUser {
  User toDomain() => User(uid: uid);
}
