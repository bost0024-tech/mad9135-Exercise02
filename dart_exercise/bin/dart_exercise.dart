import 'dart:convert';

import 'package:dart_exercise/dart_exercise.dart';

void main() {
  const String json = '''
[
  {"id": "1", "first": "Jordan", "last": "Rivera", "email": "jordan@example.com"},
  {"id": "2", "first": "Aaliyah", "last": "Brooks", "email": "aaliyah@example.com"},
  {"id": "3", "first": "Lucas", "last": "Reed", "email": "lucas@example.com"},
  {"id": "4", "first": "Priya", "last": "Singh", "email": "priya@example.com"},
  {"id": "5", "first": "Owen", "last": "Foster", "email": "owen@example.com"},
  {"id": "6", "first": "Layla", "last": "Morgan", "email": "layla@example.com"}
]
''';

  final decoded = jsonDecode(json) as List<dynamic>;
  final people = decoded
      .map((person) => Map<String, String>.from(person as Map<String, dynamic>))
      .toList();
  final students = Students(people);

  print('Original list:');
  students.output();

  print('\nSorted by first name:');
  students.sort('first');
  students.output();

  print('\nSorted by last name:');
  students.sort('last');
  students.output();

  print('\nAfter adding a student:');
  students.plus({
    'id': '7',
    'first': 'Daniel',
    'last': 'Kim',
    'email': 'daniel@example.com',
  });
  students.output();

  print('\nAfter removing the student with id 6:');
  students.remove('id', '6');
  students.output();

  print('\nAfter removing another student with id 4:');
  students.remove('id', '4');
  students.output();

}

