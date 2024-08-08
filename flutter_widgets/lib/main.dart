import 'package:flutter/material.dart';
import 'package:flutter_widgets/dropdown_button.dart';

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
          title: Text("Dropdown Button"),
        ),
        body: DropdownButtonUsage(),
      ),
    );
  }
}
