import 'package:flutter/material.dart';

class TotalScore extends StatelessWidget {
  final int totalScore;

  TotalScore(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
          'Total Score: ' + totalScore.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold
          )
      ),
    );
  }
}
