import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int qNumber;
  final List<Map<String, Object>> questions;
  final Function clickAnswer;

  Quiz(this.qNumber, this.questions, this.clickAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          Question(qNumber, questions[qNumber]['question']),

          ...(questions[qNumber]['answers'] as List<String>).map((answer) {
            return Answer(clickAnswer, answer);
          }),
        ],)
    );
  }
}