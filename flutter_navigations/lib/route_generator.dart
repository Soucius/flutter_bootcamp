import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/main.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/student_list.dart';
import 'package:flutter_navigations/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _generateRoute(HomePage(), settings);

      case "/orangePage":
        return _generateRoute(OrangePage(), settings);

      case "/yellowPage":
        return _generateRoute(YellowPage(), settings);

      case "/studentList":
        print(settings.name);
        print(settings.arguments);
        return _generateRoute(StudentList(), settings);

      default:
        return MaterialPageRoute(
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
                ));
    }
  }

  static Route<dynamic>? _generateRoute(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(builder: (context) => widget);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(builder: (context) => widget);
    } else {
      return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
