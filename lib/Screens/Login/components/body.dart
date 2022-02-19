import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/components/background.dart';
import 'package:flutter_queue_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_queue_app/components/rounded_input_field.dart';
import 'package:flutter_queue_app/constants.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Positioned(
          //     top: 0,
          //     left: 1,
          //     child: Image.asset(
          //       'assets/images/back.png',
          //       width: size.width * 0.1,
          //     )),
          const Text("LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: primaryColor)),
          SizedBox(height: size.height * 0.09),
          Image.asset('assets/images/queue-2.jpg', height: size.height * 0.3),
          SizedBox(height: size.height * 0.02),
          RoundedInputFIeld(
            hintTextString: "Email Address",
            onChanged: (value) {},
            icon: Icons.person,
          ),
          RoundedInputFIeld(
            hintTextString: "PIN",
            onChanged: (value) {},
            icon: Icons.lock,
          ),
          SizedBox(height: size.height * 0.01),
          InkWell(
            // child tapped will fire onTap
            child: RichText(
              text: const TextSpan(
                  text: 'Back',
                  style: TextStyle(
                      color: lightGrey, decoration: TextDecoration.underline)),
            ),
            onTap: () => Navigator.pop(context),
            // ↑ Navigate to new page here
          ),
        ],
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}
