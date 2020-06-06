import 'package:scorecontacts/domain/core/validators/i_hint.dart';

abstract class IHintValidator<T> {
  IHint hintValidate(T value);
}
