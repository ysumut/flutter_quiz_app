import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String qText;

  Question(qNumber, qText) {
    this.qText = "Q-${qNumber+1}: $qText";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Text(
        this.qText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
