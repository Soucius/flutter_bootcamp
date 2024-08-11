import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                int? _num = await Navigator.push<int>(context,
                    CupertinoPageRoute(builder: (context) => RedPage()));
                print("homepage num: $_num");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade300),
              child: Text(
                "go red page ios",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<int>(
                        MaterialPageRoute(builder: (context) => RedPage()))
                    .then((int? value) => print("home page num: $value"));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              child: Text(
                "go red page android",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
