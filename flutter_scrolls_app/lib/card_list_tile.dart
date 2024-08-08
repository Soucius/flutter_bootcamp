import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  const CardListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and List Tile"),
      ),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
                listElement(),
              ],
            ),
            Text("hello"),
            ElevatedButton(
              onPressed: () {},
              child: Text("Button"),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChild() {
    return SingleChildScrollView(
      child: Column(
        children: [
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
        ],
      ),
    );
  }

  Column listElement() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text("Header"),
            subtitle: Text("subtitle"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
