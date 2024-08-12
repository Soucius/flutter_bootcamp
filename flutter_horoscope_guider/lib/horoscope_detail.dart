import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/model/horoscope.dart';

class HoroscopeDetail extends StatelessWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetail({required Horoscope this.selectedHoroscope, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                selectedHoroscope.horoscopeName + " Horoscope and Features",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              centerTitle: true,
              background: Image.asset(
                "images/" + selectedHoroscope.horoscopeImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  selectedHoroscope.horoscopeDetail,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
