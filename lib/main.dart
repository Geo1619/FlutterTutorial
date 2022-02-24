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
      'answers': ['blue', 'yellow', 'red', 'green']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['dog', 'cat', 'canarin', 'rabbit']
    },
    {
      'questionText': 'What\'s your favorite programmer?',
      'answers': ['Me', 'You', 'Linus Torvalds', 'Jon Skeet']
    },
  ];
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}
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
            : Result(),
      ),
    );
  }
}
