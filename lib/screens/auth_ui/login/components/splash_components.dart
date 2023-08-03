import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;

  const SplashContent({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          "MARTWORLD",
          style: TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 108, 82, 201),
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.blueGrey,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: 400,
          width: 400,
        ),
      ],
    );
  }
}
