import 'package:flutter/material.dart';
import 'components/forward_Button.dart';
import 'components/splash_components.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class body extends StatefulWidget {
  @override
  State<body> createState() => _bodyState();
}

// ignore: camel_case_types
class _bodyState extends State<body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to MARTWORLD, Let's shop!",
      "image": "assets/images/splash1.png"
    },
    {
      "text":
          "We help People to connect with store \naround all parts of India ",
      "image": "assets/images/splash2.png"
    },
    {
      "text": "Large Variety Of items at Your doorstep",
      "image": "assets/images/splash3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    const forwardButton(),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? const Color.fromARGB(255, 108, 82, 201)
              : const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
