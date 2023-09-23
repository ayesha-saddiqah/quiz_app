import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(
    this.summaryData, {
    super.key,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    Color correctAnswerColor = const Color.fromARGB(255, 130, 224, 154);
    Color incorrectAnswerColor = const Color.fromARGB(255, 248, 168, 168);

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: (data['user_answer'] == data['correct_answer'])
                              ? correctAnswerColor
                              : incorrectAnswerColor,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: TextStyle(
                            color:
                                (data['user_answer'] == data['correct_answer'])
                                    ? const Color.fromARGB(255, 1, 37, 17)
                                    : const Color.fromARGB(255, 88, 2, 31),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          (data['question']).toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      data['user_answer'] as String,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 121, 150, 192),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 130, 224, 154),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
