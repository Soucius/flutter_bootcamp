import 'package:flutter/material.dart';

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
            expandedHeight: 300,
            floating: true,
            snap: true,
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
          SliverList(
            delegate: SliverChildListDelegate(staticListElements),
          )
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
}
