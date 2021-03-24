class Website {
  String website;

  Website({required this.website});

  @override
  String toString() {
    return 'Website{website: $website}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Website &&
          runtimeType == other.runtimeType &&
          website == other.website;

  @override
  int get hashCode => website.hashCode;
}