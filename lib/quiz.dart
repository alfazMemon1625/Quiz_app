import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // second method
  var activeScreen = 'start-screen';

  // first method for passing value
  // Widget ? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'qustion-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 85, 58, 183),
                Color.fromARGB(255, 129, 58, 183)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          // child: const StartScreen(),  after store value in widget

          child: activeScreen == 'start-screen' //declare condition
              ? StartScreen(switchScreen) //if condition true
              : const QuestionScr(), //else
        ),
      ),
    );
  }
}
