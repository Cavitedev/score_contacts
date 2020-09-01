import 'package:firebase_auth/firebase_auth.dart' as _fbAuth;
import 'package:scorecontacts/domain/features/user/user_data.dart';

extension FirebaseUserToDomain on _fbAuth.User {
  User toDomain() => User(uid: uid);
}
