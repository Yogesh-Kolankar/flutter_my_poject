import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questiontext;

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Text(
      questiontext,
      style: TextStyle(fontSize: 26, color: Colors.amber),
    );
  }
}
