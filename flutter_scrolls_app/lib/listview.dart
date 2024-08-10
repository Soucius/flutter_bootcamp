import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: must_be_immutable
class Listview extends StatelessWidget {
  Listview({super.key});

  List<Student> allStudents = List.generate(
      50,
      (index) => Student(index + 1, "student name ${index + 1}",
          "student lastname ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
      ),
      body: listviewSeperated(),
    );
  }

  ListView listviewSeperated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var nowStudent = allStudents[index];

        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onLongPress: () => _alertDialog(context, nowStudent),
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }

              EasyLoading.showToast("element clicked",
                  duration: Duration(seconds: 3),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            title: Text(nowStudent.name),
            subtitle: Text(nowStudent.lastname),
            leading: CircleAvatar(
              child: Text(nowStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
      separatorBuilder: (BuildContext context, int index) {
        if ((index + 1) % 4 == 0) {
          return Divider(
            thickness: 1,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView listviewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var nowStudent = allStudents[index];

        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              print("element clicked: ${index + 1}");
            },
            title: Text(nowStudent.name),
            subtitle: Text(nowStudent.lastname),
            leading: CircleAvatar(
              child: Text(nowStudent.id.toString()),
            ),
          ),
        );
      },
      itemCount: allStudents.length,
    );
  }

  ListView classicListview() {
    return ListView(
      children: allStudents
          .map((Student student) => ListTile(
                title: Text(student.name),
                subtitle: Text(student.lastname),
                leading: CircleAvatar(
                  child: Text(student.id.toString()),
                ),
              ))
          .toList(),
    );
  }

  void _alertDialog(BuildContext context, Student choosedStudent) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(choosedStudent.toString()),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("soucius" * 100),
                  Text("soucius1" * 100),
                  Text("soucius2" * 100),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("close")),
                  TextButton(onPressed: () {}, child: Text("ok")),
                ],
              ),
            ],
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String lastname;

  Student(this.id, this.name, this.lastname);

  @override
  String toString() {
    return "name: $name, lastname: $lastname, id: $id";
  }
}
