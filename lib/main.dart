import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return Material(
        color: Colors.lightBlue,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 80),
            Image.asset(
              "assets/images/quiz-logo.png",
              fit: BoxFit.cover,
              height: 300,
            ),
          ],
        ));
  }
}
