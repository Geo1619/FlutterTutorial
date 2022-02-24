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
  final VoidCallback answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => Answer(answerQuestion, answer))
            .toList()
      ],
    );
  }
}
