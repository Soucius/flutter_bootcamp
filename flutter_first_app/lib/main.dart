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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createRow(),
              Expanded(
                child: createColumn(),
              ),
            ],
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

  Column createColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade100,
            child: Text(
              "S",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade200,
            child: Text(
              "O",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade300,
            child: Text(
              "U",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade400,
            child: Text(
              "C",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade500,
            child: Text(
              "I",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade600,
            child: Text(
              "U",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            margin: EdgeInsets.only(top: 15),
            color: Colors.orange.shade700,
            child: Text(
              "S",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }

  Row createRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.orange.shade200,
          width: 65,
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "K",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.orange.shade400,
          width: 65,
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "A",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.orange.shade600,
          width: 65,
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "E",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.orange.shade800,
          width: 65,
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "N",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.orange.shade900,
          width: 65,
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "J",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
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
