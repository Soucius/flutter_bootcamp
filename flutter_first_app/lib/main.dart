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
        appBar: AppBar(
          title: Text("soucius appbar"),
          backgroundColor: Colors.teal,
        ),
        body: Text(
          "soucius body",
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.w500),
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
