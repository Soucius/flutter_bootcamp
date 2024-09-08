import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/horoscope_detail.dart';
import 'package:flutter_horoscope_guider/horoscope_list.dart';
import 'package:flutter_horoscope_guider/model/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HoroscopeList());

      case "/horoscopeDetail":
        final Horoscope selected = settings.arguments as Horoscope;

        return MaterialPageRoute(
            builder: (context) => HoroscopeDetail(selectedHoroscope: selected));
    }
  }
}
