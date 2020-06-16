import 'package:scorecontacts/domain/core/validators/email/email_hint.dart';
import 'package:scorecontacts/domain/core/validators/i_hint.dart';

final RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

@override
IHint emailValidate(String email) {
  if (email == null) return NoHint();
  if (emailRegExp.hasMatch(email)) {
    return NoHint();
  } else {
    return BadFormedEmail();
  }
}
