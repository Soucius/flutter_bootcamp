import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/red_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      routes: {
        "/": (context) => HomePage(),
        "/redPage": (context) => RedPage(),
        "/orangePage": (context) => OrangePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("error page"),
                ),
                body: Center(
                  child: Text(
                    "404",
                    style: TextStyle(fontSize: 64),
                  ),
                ),
              )),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('navigations'),
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              child: Text(
                "maybe pop",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("can pop");
                } else {
                  print("can not pop");
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              child: Text(
                "can pop",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GreenPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade600),
              child: Text(
                "push replacement",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/redPage");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600),
              child: Text(
                "push named",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/orangePage");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600),
              child: Text(
                "go orange",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
