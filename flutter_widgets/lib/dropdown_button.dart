import 'package:flutter/material.dart';

class DropdownButtonUsage extends StatefulWidget {
  const DropdownButtonUsage({super.key});

  @override
  State<DropdownButtonUsage> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<DropdownButtonUsage> {
  String? _choosedCity = null;
  List<String> _allCities = [
    "Istanbul",
    "Bursa",
    "Ankara",
    "Izmir",
    "Adiyaman",
    "Trabzon"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Choose City"),
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(color: Colors.red),
        items: _allCities.map((String? city) {
          DropdownMenuItem(
            child: Text(city),
            value: city,
          );
        }).toList(),
        value: _choosedCity,
        onChanged: (String? value) {
          setState(() {
            _choosedCity = value;
          });
        },
      ),
    );
  }
}
