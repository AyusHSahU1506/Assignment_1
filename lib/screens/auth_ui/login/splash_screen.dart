import 'package:flutter/material.dart';
import 'body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}
