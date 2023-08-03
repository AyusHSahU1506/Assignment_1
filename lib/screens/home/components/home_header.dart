import 'package:e_com/screens/home/components/searchBar.dart';
import 'package:flutter/material.dart';

import 'notificationBtn.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [searchBar(), IconWithNotification()],
      ),
    );
  }
}
