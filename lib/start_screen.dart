import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisSize: MainAxisSize.min,
        children: [
          // second nd best approch for transperency
          Image.asset(
            "assets/images/quiz-logo.png",
            fit: BoxFit.cover,
            width: 300,
            color: const Color.fromARGB(151, 255, 255, 255),
          ),

// first approch for transperency
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     fit: BoxFit.cover,
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter with fun way!",
            style: TextStyle(
                color: Color.fromARGB(255, 194, 235, 255),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
              onPressed: (() {}),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
