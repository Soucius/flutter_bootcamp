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
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: Colors.red[100 * ((index + 1) % 8)],
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                  image: AssetImage(
                      "/flutter_scrolls_app/assets/images/ducati.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              margin: EdgeInsets.all(20),
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
