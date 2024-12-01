import 'dart:async';

import 'package:chat_online/core/constants/string.dart';
import 'package:chat_online/ui/screens/wrapper/wrapper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, wrapper);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              height: 170,
              width: 170,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 175,
              height: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    progressIndicatorTheme: const ProgressIndicatorThemeData(
                      color: Colors.white,
                      linearTrackColor: Color(0xFF434343),
                    ),
                  ),
                  child: const LinearProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
