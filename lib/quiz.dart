import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        // The ... (spread operator) makes the elements of this list into elements of the parent list oO
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerQuestion(answer['score']),
                answer['text'] as String))
            .toList()
      ],
    );
  }
}
