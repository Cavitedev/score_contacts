import 'package:scorecontacts/domain/core/validators/i_hint.dart';

abstract class EmailHint extends IHint {}

class BadFormedEmail implements EmailHint {
  @override
  String get message => "Email is not well formed";
}
