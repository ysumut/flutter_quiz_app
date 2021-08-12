import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/question.dart';

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
        Column(children: [
          Question(_qNumber, questions[_qNumber]['question']),

          ...(questions[_qNumber]['answers'] as List<String>).map((answer) {
            return Answer(clickAnswer, answer);
          }),
        ],) : Center(child: Text('Quiz is finished'),),
      ),
    );
  }

  void clickAnswer() {
    setState(() {
      _qNumber++;
    });
  }
}