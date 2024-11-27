import 'package:chat_online/core/constants/string.dart';
import 'package:chat_online/ui/screens/auth/login/login_screen.dart';
import 'package:chat_online/ui/screens/auth/signup/signup_screen.dart';
import 'package:chat_online/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/screens/splash/splash_screen.dart';

class RouteUtils {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      /// Home ---------------------------------------------------------------
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      ///Auth ----------------------------------------------------------------
      case signup:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text("No Route Found!")),
                ));
    }
  }
}
