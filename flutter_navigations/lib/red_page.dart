import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _randomNum = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("onwillpop worked");

        if (_randomNum == 0) {
          _randomNum = Random().nextInt(100);
          Navigator.pop(context, _randomNum);
        }

        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("red page"),
          backgroundColor: Colors.red,
          // automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "red page",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomNum = Random().nextInt(100);
                  print("created num: $_randomNum");
                  Navigator.of(context).pop(_randomNum);
                },
                child: Text("go back"),
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
            ],
          ),
        ),
      ),
    );
  }
}
