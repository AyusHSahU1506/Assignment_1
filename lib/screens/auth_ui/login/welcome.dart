import 'package:e_com/button.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _LoginState();
}

class _LoginState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 108, 82, 201)),
            ),
          ),
          const SizedBox(height: 1),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("assets/images/image1.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: SizedBox(
                  width: 177,
                  height: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    iconSize: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Card(
                elevation: 5,
                child: SizedBox(
                  width: 177,
                  height: 60,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/Google.png"),
                    iconSize: 50,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("E-mail"),
                      hintText: "Enter your Mail",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              )
            ],
          )),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text("Password"),
                      hintText: "Enter your Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              SizedBox(width: 125, child: Text("Forgot Password?")),
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Mybutton(
                title: "Login",
              ),
            ),
          ),
          const Center(
              child: Text(
            "Don't have an account ?",
          )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Mybutton(title: "Sign Up")),
          )
        ],
      ),
    ));
  }
}
