import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/data/strings.dart';
import 'package:flutter_horoscope_guider/horoscope_item.dart';
import 'model/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscopes;

  HoroscopeList() {
    allHoroscopes = prepareData();
    print(allHoroscopes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("horoscope list"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(listedHoroscope: allHoroscopes[index]);
          },
          itemCount: allHoroscopes.length,
        ),
      ),
    );
  }

  List<Horoscope> prepareData() {
    List<Horoscope> temporaryList = [];

    for (int i = 0; i < 12; i++) {
      String horoscopeName = Strings.HOROSCOPE_NAMES[i];
      String horoscopeDate = Strings.HOROSCOPE_DATES[i];
      String horoscopeDetail = Strings.HOROSCOPE_GENERAL_FEATURES[i];
      String horoscopeThumbnail =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + "${i + 1}.png";
      String horoscopeImage =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + "_buyuk${i + 1}.png";

      Horoscope willAddHoroscope = Horoscope(horoscopeName, horoscopeDate,
          horoscopeDetail, horoscopeThumbnail, horoscopeImage);
      temporaryList.add(willAddHoroscope);
    }

    return temporaryList;
  }
}
