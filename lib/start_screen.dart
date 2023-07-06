import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(217, 255, 191, 0),
            ),
            const SizedBox(height: 50),
            Text(
              "Learn flutter the fun way!",
              style: GoogleFonts.lato(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.amber,
                side: const BorderSide(
                  color: Colors.amber,
                ),
              ),
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(Icons.api),
              label: const Text("Start here!"),
            ),
          ],
        ),
      ),
    );
  }
}
