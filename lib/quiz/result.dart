import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;

  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Quiz is finished!',
            textAlign: TextAlign.center,
          ),

          ElevatedButton(onPressed: resetQuiz, child: Text('Reset Quiz'))
        ],
      ),
    ),);
  }
}
