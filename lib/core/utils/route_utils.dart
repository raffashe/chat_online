import 'package:chat_online/core/constants/string.dart';
import 'package:chat_online/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../ui/screens/splash/splash_screen.dart';

class RouteUtils {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      // case wrapper:
      //   return MaterialPageRoute(builder: (context) => const WrapperScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text("No Route Found!")),
                ));
    }
  }
}
