import 'package:e_com/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  const Mybutton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
