import 'package:flutter/widgets.dart';
import 'package:flutter_queue_app/Screens/Login/login_screen.dart';
import 'package:flutter_queue_app/Screens/Welcome/welcome_screen.dart';

class Routes {
  static String get initial => WelcomeScreen.id;
  static Map<String, WidgetBuilder> get routes => {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      };
}
