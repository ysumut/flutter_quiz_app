import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'Which team has the most league cup in Turkey?',
    'Which animals lives the longest?'
  ];
  var _qNumber = 0;
  var isFinish = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Flutter App'), backgroundColor: Colors.red, centerTitle: true,),

        body: Column(children: [
            Question(_qNumber, questions[_qNumber]),

            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-1'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-2'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-3'),),

            Visibility(child: Text('Quiz is finished'), visible: isFinish,)
          ],
        ),
      ),
    );
  }

  void clickAnswer() {
    setState(() {
      if(_qNumber < questions.length - 1) _qNumber++;
      else if(_qNumber == questions.length - 1) isFinish = true;
    });
  }
}