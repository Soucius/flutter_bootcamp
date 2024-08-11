import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    int elementNum = ModalRoute.of(context)!.settings.arguments as int;
    print("element num got: $elementNum");

    return Scaffold(
      appBar: AppBar(
        title: Text("student list"),
      ),
      body: Container(),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String lastname;

  Student(this.id, this.name, this.lastname);
}
