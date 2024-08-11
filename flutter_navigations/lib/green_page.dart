import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("green page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "green page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
