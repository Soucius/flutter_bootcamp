import 'package:flutter/material.dart';

class CustomScrollAndSlivers extends StatelessWidget {
  const CustomScrollAndSlivers({super.key});

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
            title: Text("sliver app bar"),
            backgroundColor: Colors.red,
            expandedHeight: 200,
            floating: true,
          ),
        ],
      ),
    );
  }
}
