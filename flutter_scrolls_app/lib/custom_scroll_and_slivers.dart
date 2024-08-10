import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomScrollAndSlivers extends StatelessWidget {
  const CustomScrollAndSlivers({super.key});
  final String _img =
      "https://arabam-blog.mncdn.com/wp-content/uploads/2022/01/A-Red-The-Ducati-1098.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "custom scroll view and slivers",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.redAccent.shade200,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text("sliver app bar"),
            backgroundColor: Colors.red,
            expandedHeight: 100,
            floating: false,
            snap: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("sliver app bar"),
              centerTitle: true,
              background: Image.network(
                _img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(staticListElements),
          // ),
          // SliverPadding(
          //   padding: EdgeInsets.all(10),
          //   sliver: SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //       _dynamicElementCreator,
          //       childCount: 10,
          //     ),
          //   ),
          // ),
          // SliverPadding(
          //   padding: EdgeInsets.all(10),
          //   sliver: SliverFixedExtentList(
          //     delegate: SliverChildBuilderDelegate(_dynamicElementCreator),
          //     itemExtent: 100,
          //   ),
          // ),

          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                _dynamicElementCreator,
                childCount: 10,
              ),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get staticListElements {
    return [
      Container(
        height: 100,
        child: Text(
          "static list element 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 7",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 8",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "static list element 9",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget? _dynamicElementCreator(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "dynamic list element ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      color: _randomColorGenerator(),
      alignment: Alignment.center,
    );
  }

  Color _randomColorGenerator() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
    );
  }
}
