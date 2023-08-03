import 'package:flutter/material.dart';

class DiscountBar extends StatelessWidget {
  const DiscountBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      // height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
            text: "Big Billion Offer \n",
            style: TextStyle(color: Colors.white, fontSize: 15),
            children: [
              TextSpan(
                  text: "Cashback 20%",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
            ]),
      ),
    );
  }
}
