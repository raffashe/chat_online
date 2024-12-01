import 'package:chat_online/core/services/auth_service.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            AuthService().logout();
          },
          child: Text(
            "Welcome to HomeScreen",
            style: header.copyWith(color: accent),
          ),
        ),
      ),
    );
  }
}
