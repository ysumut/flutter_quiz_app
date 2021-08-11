import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MyApp> {
  var questions = [
    'Which team has the most league cup in Turkey?',
    'Which animals lives the longest?'
  ];
  var qNumber = 0;
  var isFinish = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Flutter App'), backgroundColor: Colors.red, centerTitle: true,),

        body: Container(
          child: Column(children: [
            Center(child: Text('Question: ' + questions[qNumber])),

            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-1'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-2'),),
            ElevatedButton(onPressed: clickAnswer, child: Text('Answer-3'),),

            Visibility(child: Text('Quiz is finished'), visible: isFinish,)
          ],),
        ),
      ),
    );
  }

  void clickAnswer() {
    setState(() {
      if(qNumber < questions.length - 1) qNumber++;
      else if(qNumber == questions.length - 1) isFinish = true;
    });
  }
}