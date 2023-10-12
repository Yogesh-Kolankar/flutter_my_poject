import "package:flutter/material.dart";
import 'package:my_own_app/result.dart';
import './answer.dart';
import './question.dart';
import 'main.dart';
import 'result.dart';
class Quiz extends StatelessWidget {
    final List<Map<String, Object>> Questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({ required this.Questions,  required this.answerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Question(Questions[questionIndex]["questiontext"]),
      ...(Questions[questionIndex]["Answers"] as List<Map<String,Object>>).map((answer) {
        return Answer(()=>answerQuestion(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
