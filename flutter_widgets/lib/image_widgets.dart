import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJajCsSS4wce-u7wbKqP7TaQDg9nhyqtdvyA&s";

    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red.shade300,
            width: 150,
            height: 150,
            child: Image.asset(
              "assets/images/ducati.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.shade300,
            width: 150,
            height: 150,
            child: Image.network(
              _imgURL,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.shade300,
            child: CircleAvatar(
              // child: Text(
              //   "S",
              //   style: Theme.of(context).textTheme.headlineLarge,
              // ),
              backgroundImage: NetworkImage(_imgURL),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.red,
              radius: 75,
            ),
          ),
        ],
      ),
    );
  }
}
