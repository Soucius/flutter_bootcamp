import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/card_list_tile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CardListTile(),
    );
  }
}
