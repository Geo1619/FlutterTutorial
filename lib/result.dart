import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhase {
    String resultText;
    if (resultScore <= 14) {
      resultText = 'You are innocent!';
    } else if (resultScore <= 22) {
      resultText = 'You are kind hearted!';
    } else if (resultScore <= 30) {
      resultText = 'You are wild spirited!';
    } else {
      resultText = 'You are so naughty!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(onPressed: resetHandler, child: const Text('Reset Quiz'))
        ],
      ),
    );
  }
}
