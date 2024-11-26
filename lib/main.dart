import 'package:flutter/material.dart';

void main() {
  runApp(const ChatOnline());
}

class ChatOnline extends StatelessWidget {
  const ChatOnline({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Center(
      child: Text("Welcome to Chat Online"),
    ));
  }
}
