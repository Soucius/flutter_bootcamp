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
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: flexibleContainer,
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

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.blue,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.purple,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 100,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  Widget containerLessons() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          "soucius",
          style: TextStyle(fontSize: 100),
        ),
        decoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: 4),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          image: DecorationImage(
            image: NetworkImage(""),
            fit: BoxFit.scaleDown,
            repeat: ImageRepeat.repeat,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0, 20),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.yellow,
              offset: Offset(0, -20),
              blurRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
