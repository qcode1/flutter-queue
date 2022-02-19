import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/login_screen.dart';
import 'package:flutter_queue_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_queue_app/components/rounded_button.dart';
import 'package:flutter_queue_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Welcome To InQueue",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: primaryColor,
                decoration: TextDecoration.none),
          ),
          SizedBox(height: size.height * 0.09),
          Image.asset(
            'assets/images/queue-2.jpg',
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.04),
          RoundedButton(
            text: "LOGIN",
            press: () {
              // This causes error
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));

              // Below works but takes you directly to login page
              // Future.delayed(Duration.zero, () {
              //   Navigator.of(context).pushAndRemoveUntil(
              //       MaterialPageRoute(builder: (context) => LoginScreen()),
              //       (route) => false);
              // });
            },
          ),
          RoundedButton(
            text: "SIGNUP",
            color: lightGrey,
            textColor: Colors.white,
            press: () {},
          )
        ],
      ),
    );
  }
}
