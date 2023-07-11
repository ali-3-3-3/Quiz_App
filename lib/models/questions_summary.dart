import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              bool correct = data['user_answer'] == data['correct_answer'];
              return Row(
                children: [
                  ClipOval(
                    child: Material(
                      color: correct
                          ? const Color.fromARGB(255, 147, 189, 156)
                          : const Color.fromARGB(255, 213, 93, 84),
                      child: InkWell(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 40, 2, 49),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(194, 243, 143, 226),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(194, 143, 243, 173),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
