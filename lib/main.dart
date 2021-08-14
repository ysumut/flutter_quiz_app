import 'package:flutter/material.dart';
import 'quiz/total_score.dart';
import 'quiz/quiz.dart';
import 'quiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      "question": "Which team has the most league cup in Turkey?",
      "answers": [
        {"text": "Trabzonspor", "score": 0},
        {"text": "Galatasaray", "score": 10},
        {"text": "Beşiktaş", "score": 0},
        {"text": "Fenerbahçe", "score": 0}
      ]
    },
    {
      "question": "Which animals lives the longest?",
      "answers": [
        {"text": "Tortoise", "score": 15},
        {"text": "Monkey", "score": 0},
        {"text": "Lion", "score": 0},
        {"text": "Pigeon", "score": 0}
      ]
    },
    {
      "question": "How tall is the tallest building in the world?",
      "answers": [
        {"text": "530 metres", "score": 0},
        {"text": "945 metres", "score": 0},
        {"text": "647 metres", "score": 0},
        {"text": "828 metres", "score": 20}
      ]
    }
  ];
  int _qNumber = 0, _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App'), backgroundColor: Colors.red, centerTitle: true,),

        body: Column(children: [
          TotalScore(_totalScore),

          _qNumber < questions.length ? Quiz(_qNumber, questions, clickAnswer) : Result(resetQuiz),
        ],),
      ),
    );
  }

  void clickAnswer(int score) {
    setState(() {
      _qNumber++;
      _totalScore += score;
    });
  }

  void resetQuiz() {
    setState(() {
      _qNumber = 0;
      _totalScore = 0;
    });
  }
}