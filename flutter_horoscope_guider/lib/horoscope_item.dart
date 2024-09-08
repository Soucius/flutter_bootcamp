import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHoroscope;
  const HoroscopeItem({required this.listedHoroscope, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/horoscopeDetail",
                  arguments: listedHoroscope);
            },
            leading: Image.asset(
              "images/" + listedHoroscope.horoscopeThumbnail,
            ),
            title: Text(
              listedHoroscope.horoscopeName,
              style: myTextStyle.headlineSmall,
            ),
            subtitle: Text(
              listedHoroscope.horoscopeDate,
              style: myTextStyle.titleSmall,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
