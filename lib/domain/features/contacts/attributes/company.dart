class Company{
  String name;
  String title;

  Company({this.name, this.title});


  @override
  String toString() {
    return 'Company{name: $name, title: $title}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          title == other.title;

  @override
  int get hashCode => name.hashCode ^ title.hashCode;
}