import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/login_screen.dart';
import 'package:flutter_queue_app/components/rounded_button.dart';
import 'package:flutter_queue_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            "Welcome To InQueue",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: primaryColor,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: size.height * 0.09),
          Expanded(
            child: Image.asset(
              'assets/images/queue-2.jpg',
              height: size.height * 0.3,
            ),
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.of(context).pushNamed(LoginScreen.id);
              // This causes error

              // Below works but takes you directly to login page
              // Future.delayed(Duration.zero, () {
              //   Navigator.of(context).pushAndRemoveUntil(
              //       MaterialPageRoute(builder: (context) => LoginScreen()),
              //       (route) => false);
              // });
            },
          ),
          const SizedBox(height: 10),
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
