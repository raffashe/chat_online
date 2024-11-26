import 'package:chat_online/core/utils/route_utils.dart';
import 'package:chat_online/firebase_options.dart';
import 'package:chat_online/ui/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ChatOnline());
}

class ChatOnline extends StatelessWidget {
  const ChatOnline({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
            onGenerateRoute: RouteUtils.onGenerateRoute,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor:
                  Colors.black, // Define background como preto
            ),
            home: const SplashScreen()));
  }
}
