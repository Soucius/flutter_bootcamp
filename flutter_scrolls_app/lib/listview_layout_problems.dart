import 'package:flutter/material.dart';

class ListviewLayoutProblems extends StatelessWidget {
  const ListviewLayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview layout problems"),
      ),
      body: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          shrinkWrap: true,
          children: [
            Container(
              width: 200,
              color: Colors.orange.shade200,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade400,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade600,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade800,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Column columnList() {
    return Column(
      children: [
        Text("started"),
        Expanded(
          child: ListView(
            // shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade600,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade800,
              ),
            ],
          ),
        ),
        Text("finished"),
      ],
    );
  }
}
