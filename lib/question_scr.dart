import 'package:flutter/material.dart';
import 'package:quiz_app/ans_button.dart';
import 'package:quiz_app/data/data_que.dart';

class QuestionScr extends StatefulWidget {
  const QuestionScr({super.key});
  @override
  State<QuestionScr> createState() {
    return _QuestionScrState();
  }
}

class _QuestionScrState extends State<QuestionScr> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    // second method for cokunm centre replace a"centre" widget and mainAxisalignment
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 113, 238, 255),
              // fontWeight: FontWeight.bold,
              // fontSize: 30
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnsButton(
            ansText: currentQuestion.ans[0],
            onTap: () {},
          ),
          AnsButton(
            ansText: currentQuestion.ans[1],
            onTap: () {},
          ),
          AnsButton(
            ansText: currentQuestion.ans[2],
            onTap: () {},
          ),
          AnsButton(
            ansText: currentQuestion.ans[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
