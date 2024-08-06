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
        body: Center(
          widthFactor: 3,
          heightFactor: 3,
          child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text("soucius"),
          ),
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
