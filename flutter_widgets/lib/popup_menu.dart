import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  String _choosedCity = "Istanbul";
  List<String> colors = ["blue", "green", "red", "yellow", "black"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String city) {
          print("choosed city: $city");

          setState(() {
            _choosedCity = city;
          });
        },
        // icon: Icon(Icons.add),
        // child: Text(_choosedCity),
        itemBuilder: (BuildContext context) {
          return colors
              .map(
                (String color) => PopupMenuItem(
                  child: Text(color),
                  value: color,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
