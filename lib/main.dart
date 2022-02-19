import 'package:flutter/material.dart';
import 'package:flutter_queue_app/Routes/routes.dart';
import 'package:flutter_queue_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Queue Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: const Color(0xFFffffff),
      ),
      initialRoute: Routes.initial,
      routes: Routes.routes,
    );
  }
}
