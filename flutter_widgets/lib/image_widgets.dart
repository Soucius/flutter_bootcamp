import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJajCsSS4wce-u7wbKqP7TaQDg9nhyqtdvyA&s";

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      "assets/images/ducati.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        // child: Text(
                        //   "S",
                        //   style: Theme.of(context).textTheme.headlineLarge,
                        // ),
                        backgroundImage: NetworkImage(_imgURL),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/loading.gif",
                image: _imgURL),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
