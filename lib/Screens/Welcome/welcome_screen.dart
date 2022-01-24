import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Body(),
      alignment: Alignment.center,
    );
  }
}
