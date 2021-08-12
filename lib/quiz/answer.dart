import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickAnswer;
  final String aText;

  Answer(this.clickAnswer, this.aText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: clickAnswer,
        child: Text(aText),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.blue)
        ),
      ),
    );
  }
}
