import 'package:flutter/material.dart';
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
      'question': 'Which team has the most league cup in Turkey?',
      'answers': ['Trabzonspor','Galatasaray','Beşiktaş','Fenerbahçe']
    },
    {
      'question': 'Which animals lives the longest?',
      'answers': ['Lion','Monkey','Tortoise','Pigeon']
    },
  ];
  var _qNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App'), backgroundColor: Colors.red, centerTitle: true,),

        body: _qNumber < questions.length ?
        Quiz(_qNumber, questions, clickAnswer) :
        Result(),
      ),
    );
  }

  void clickAnswer() {
    setState(() {
      _qNumber++;
    });
  }
}