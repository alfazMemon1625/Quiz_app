import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisSize: MainAxisSize.min,
        children: [
          // second nd best approch for transperency direct use in vs code color option in color.fromargb
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
          Text(
            "Learn Flutter with fun way!",
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 194, 235, 255),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
