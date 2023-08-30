import 'package:flutter/material.dart';
import 'package:quiz_app/data/data_que.dart';
import 'package:quiz_app/question_summary/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.choosenAnswers, required this.onRestart});
  final void Function() onRestart;
  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_ans': questions[i].ans[0],
        'user_ans': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestion = questions.length;
    final correctAns = summaryData.where((data) {
      return data['user_ans'] == data['correct_ans'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAns out of $totalQuestion questions correctly!',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            // const Text('List of answers and questions..'), replace with below
            QuestionSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart again'),
            ),
          ],
        ),
      ),
    );
  }
}
