import 'package:flutter/material.dart';
import 'package:quiz_app/data/data_que.dart';
import 'package:quiz_app/question_scr.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //passing function as value for ans add
  List<String> selectedAns = [];
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

  //passing function as value
  void chooseAns(String answer) {
    selectedAns.add(answer);
    //when all ans done then again page start
    if (selectedAns.length == questions.length) {
      setState(() {
        selectedAns = [];
        // activeScreen = 'start-screen';
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    // fist method with ternary oprator
    // final screenWidget =  activeScreen == 'start-screen' //declare condition
    //           ? StartScreen(switchScreen) //if condition true
    //           : const QuestionScr(); //else;

    // second method with if

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'qustion-screen') {
      screenWidget = QuestionScr(
        //passing function as value for ans add
        onSelectAns: chooseAns,
      );
    }

    if (activeScreen == "result-screen") {
      screenWidget =  ResultsScreen(choosenAnswers: selectedAns,);
    }
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

          child: screenWidget,
        ),
      ),
    );
  }
}
