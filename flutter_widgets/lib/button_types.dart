import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("long pressed");
          },
          child: Text("textButton"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          icon: Icon(Icons.add),
          label: Text("text button with icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text("elevated button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("elevated button with icon"),
          icon: Icon(Icons.add),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("outlined button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          label: Text("outlined button with icon"),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 2),
          ),
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
