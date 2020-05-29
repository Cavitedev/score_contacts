class Failure {
  final String message;

  const Failure(this.message);

  @override
  String toString() {
    return 'Failure{message: $message}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failure &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}
