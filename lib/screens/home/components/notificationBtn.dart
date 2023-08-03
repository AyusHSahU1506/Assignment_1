// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconWithNotification extends StatelessWidget {
  const IconWithNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/images/bell.png",
              scale: 1.5,
            ),
          ),
          Positioned(
            top: -1,
            right: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white)),
              child: const Center(
                child: Text(
                  "3",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
