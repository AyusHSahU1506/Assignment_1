import 'package:e_com/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-commerce App',
        theme: themeData,
        // home: const SplashScreen());
        home: const HomeScreen());
  }
}
