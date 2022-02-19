import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static const id = "/auth/login";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
