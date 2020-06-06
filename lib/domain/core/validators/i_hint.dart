abstract class IHint {
  String get message;
}

class NoHint implements IHint {
  @override
  String get message => "";
}
