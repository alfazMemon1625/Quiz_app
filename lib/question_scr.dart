import 'package:flutter/material.dart';
import 'package:quiz_app/ans_button.dart';
import 'package:quiz_app/data/data_que.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScr extends StatefulWidget {
  const QuestionScr({super.key, required this.onSelectAns});
    //passing function as value for ans add
  final void Function(String answer) onSelectAns;
  @override
  State<QuestionScr> createState() {
    return _QuestionScrState();
  }
}



class _QuestionScrState extends State<QuestionScr> {
  var currentQuestionIndex = 0;


  void answerQuestion(String selectedAns) {
      //passing function as value for ans add
    widget.onSelectAns(selectedAns);
    setState(() {
      currentQuestionIndex += 1;
    });
  }




  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    // second method for cokunm centre replace a"centre" widget and mainAxisalignment
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 154, 208, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getshuffledQues().map((answer) {
              return AnsButton(
                ansText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
