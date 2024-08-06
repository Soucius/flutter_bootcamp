import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("soucius appbar"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.purple,
          // child: Text(
          //   "soucius" * 2,
          //   textAlign: TextAlign.center,
          // ),
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("clicked");
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
