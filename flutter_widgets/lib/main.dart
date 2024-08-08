import 'package:flutter/material.dart';
import 'package:flutter_widgets/button_types.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widgets"),
        ),
        body: ButtonTypes(),
      ),
    );
  }
}
