import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/components/background.dart';
import 'package:flutter_queue_app/components/rounded_input_field.dart';
import 'package:flutter_queue_app/constants.dart';

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
          const Text("LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: primaryColor)),
          SizedBox(height: size.height * 0.04),
          Image.asset('assets/images/queue-2.jpg', height: size.height * 0.3),
          SizedBox(height: size.height * 0.04),
          RoundedInputFIeld(
            hintTextString: "Email Address",
            onChanged: (value) {},
            icon: Icons.person,
          ),
          RoundedInputFIeld(
            hintTextString: "PIN",
            onChanged: (value) {},
            icon: Icons.lock,
          )
        ],
      ),
    );
  }
}
