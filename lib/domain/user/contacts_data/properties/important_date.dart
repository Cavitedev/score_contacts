class ImportantDate{
  DateTime? date;
  String? label;

  ImportantDate({this.date, this.label});

  @override
  String toString() {
    return 'ImportantDate{date: $date, label: $label}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImportantDate &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          label == other.label;

  @override
  int get hashCode => date.hashCode ^ label.hashCode;
}