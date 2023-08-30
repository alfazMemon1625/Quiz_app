import 'package:flutter/material.dart';
import 'package:quiz_app/question_summary/quesiton_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class Summaryitems extends StatelessWidget {
  const Summaryitems(this.itemData, {super.key});
  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectans = itemData['user_ans'] == itemData['correct_ans'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectans: isCorrectans),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_ans'] as String,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 255, 196, 133),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(itemData['correct_ans'] as String,
                  style: GoogleFonts.lato(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 168, 255, 133),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        )
      ],
    );
  }
}
