import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yellow page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text(
          "yellow page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
