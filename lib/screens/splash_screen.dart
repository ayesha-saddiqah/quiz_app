import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset(
              'assets/images/quiz-logo.png',
              color: const Color.fromARGB(150, 255, 255, 255),
              width: 300,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(
                fontSize: 22, color: Color.fromARGB(255, 187, 222, 245)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
