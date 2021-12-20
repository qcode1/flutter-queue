import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/login_screen.dart';
import 'package:flutter_queue_app/Screens/Welcome/components/background.dart';
import 'package:flutter_queue_app/components/rounded_button.dart';
import 'package:flutter_queue_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Welcome To InQueue",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: darkPrimaryColor),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              'assets/images/queue-2.jpg',
              height: size.height * 0.3,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
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
      ),
    );
  }
}
