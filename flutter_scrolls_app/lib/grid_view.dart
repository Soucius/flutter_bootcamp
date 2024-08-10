import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view"),
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * ((index + 1) % 8)],
              child: Text(
                "hello soucius ${index + 1}",
                textAlign: TextAlign.center,
              ),
            );
          }),
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      crossAxisCount: 2,
      primary: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        cont(),
        cont(),
        cont(),
        cont(),
        cont(),
        cont(),
        cont(),
        cont(),
        cont(),
      ],
    );
  }

  Container cont() {
    return Container(
      alignment: Alignment.center,
      color: Colors.teal.shade300,
      child: Text(
        "hello soucius",
        textAlign: TextAlign.center,
      ),
    );
  }
}
