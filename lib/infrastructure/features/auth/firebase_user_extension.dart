import 'package:firebase_auth/firebase_auth.dart';
import 'package:scorecontacts/domain/features/user/user_data.dart';

extension FirebaseUserToDomain on FirebaseUser {
  User toDomain() => User(uid: uid);
}
