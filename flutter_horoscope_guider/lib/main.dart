import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/horoscope_list.dart';
import 'package:flutter_horoscope_guider/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
