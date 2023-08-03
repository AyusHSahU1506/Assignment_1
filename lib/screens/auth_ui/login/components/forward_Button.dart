import 'package:e_com/screens/auth_ui/login/welcome.dart';
import 'package:flutter/material.dart';

class forwardButton extends StatelessWidget {
  const forwardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            splashColor: Colors.deepPurple,
            backgroundColor: const Color.fromARGB(255, 108, 82, 201),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Welcome()));
            },
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
