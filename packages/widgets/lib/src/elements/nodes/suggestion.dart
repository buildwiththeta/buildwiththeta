class Suggestion {
  const Suggestion({this.title, this.description, this.linkToOpen});

  final String? title;
  final String? description;
  final String? linkToOpen;

  @override
  String toString() => 'Suggestion';
}
