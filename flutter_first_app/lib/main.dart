import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img =
      "https://global.yamaha-motor.com/business/mc/img/index_key_005_sp.jpg";

  String _smallImage =
      "https://cdn.pixabay.com/photo/2022/04/24/11/05/bird-7153402_640.jpg";

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
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("S"),
                  Text("O"),
                  Text("U"),
                  Text("C"),
                  Text("I"),
                  Text("U"),
                  Text("S"),
                ],
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.red,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
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
            image: NetworkImage(_smallImage),
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
