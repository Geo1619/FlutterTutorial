// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _ means private scope!!!
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Yellow', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Horse', 'score': 10},
        {'text': 'Mouse', 'score': 7},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite programmer?',
      'answers': [
        {'text': 'Me', 'score': 10},
        {'text': 'You', 'score': 7},
        {'text': 'Linus Torvalds', 'score': 5},
        {'text': 'Alan Turing', 'score': 3},
      ]
    },
  ];
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
