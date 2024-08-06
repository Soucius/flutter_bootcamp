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
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            // alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              margin: EdgeInsets.all(40),
              width: 50,
              height: 50,
              child: Text("soucius"),
            ),
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
