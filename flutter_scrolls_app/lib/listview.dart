import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  Listview({super.key});

  List<Student> allStudents = List.generate(
      500,
      (index) => Student(index + 1, "student name ${index + 1}",
          "student lastname ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Studend List"),
      ),
      body: ListView(
        children: allStudents
            .map((Student student) => ListTile(
                  title: Text(student.name),
                  subtitle: Text(student.lastname),
                  leading: CircleAvatar(
                    child: Text(student.id.toString()),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String lastname;

  Student(this.id, this.name, this.lastname);
}
