import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guider/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetail({required Horoscope this.selectedHoroscope, super.key});

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    findAppbarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.selectedHoroscope.horoscopeName +
                    " Horoscope and Features",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.selectedHoroscope.horoscopeImage,
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
                  widget.selectedHoroscope.horoscopeDetail,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void findAppbarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.selectedHoroscope.horoscopeImage}"));

    setState(() {
      appbarColor = _generator.dominantColor!.color;
    });
  }
}
