import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Screens/Login/login_screen.dart';
import 'package:flutter_queue_app/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_queue_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Queue Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Color(0xFFffffff)),
      home: const WelcomeScreen(),
      routes: {
        // When navigating to the "/login" route, build the LoginScreen widget.
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
