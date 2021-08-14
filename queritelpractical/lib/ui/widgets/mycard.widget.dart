import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final imageURL;
  final name;
  final VoidCallback onPressed;
  const MyCard({Key? key, this.imageURL, this.name, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // elevation: 5.0,
      style: ElevatedButton.styleFrom(
        elevation: 10.0,
        onPrimary: Colors.blue,
        primary: Colors.white,
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Expanded(child: Image.network(imageURL)),
          Text(
            name,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
