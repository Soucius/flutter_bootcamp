import 'package:flutter/material.dart';
import 'package:flutter_widgets/popup_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "Popup Menu",
            style: TextStyle(color: Colors.white),
          ),
          foregroundColor: Colors.white,
          actions: [PopupMenu()],
        ),
        body: PopupMenu(),
      ),
    );
  }
}
