import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(25)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Search Products",
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
