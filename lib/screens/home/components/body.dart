import 'package:flutter/material.dart';
import 'discountBar.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 5,
            ),
            HomeHeader(),
            DiscountBar(),
            Cateogories()
          ],
        ),
      ),
    );
  }
}

class Cateogories extends StatelessWidget {
  const Cateogories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
