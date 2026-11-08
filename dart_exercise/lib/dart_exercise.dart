class Students {
  final List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    if (people.any((person) => !person.containsKey(field))) {
      throw ArgumentError('Every student must have the field "$field".');
    }

    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (final person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field, String value) {
    people.removeWhere((person) => person[field] == value);
  }
}
