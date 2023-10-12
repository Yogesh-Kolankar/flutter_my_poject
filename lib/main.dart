import 'package:flutter/material.dart';
import 'package:my_own_app/result.dart';
import './answer.dart';
import './question.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String Appname = 'Myapp';

  var Questions = [
    {
      'questiontext': "What is your favorite color?",
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', "score": 6},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 1}
      ]
    },
    {
      'questiontext': "What is your favorite Anilmal?",
      'Answers': [
        {'text': 'Lion', "score": 10},
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Snake', 'score': 1}
      ]
    },
    {
      'questiontext': "What is your favorite Friend?",
      'Answers': [
        {'text': 'Ankit', 'score': 10},
        {'text': 'Sahil', 'score': 6},
        {'text': 'Anil', 'score': 3},
        {'text': 'Shivani', 'score': 1}
      ]
    },
    {
      'questiontext': "What is your favorite Friend?",
      'Answers': [
        {'text': 'HCL', 'score': 10},
        {'text': 'ACCCENTURE', 'score': 6},
        {'text': 'INFOSYS', 'score': 3},
        {'text': 'TCS', 'score': 1}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
      print('calling');
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < Questions.length) {
      print("we have more question ");
    } else {
      print("no more questions");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: Appname,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.brown,
              title: Text("First Flutter App"),
            ),
            body: Center(
                child: Container(
                    child: questionIndex < Questions.length
                        ? Quiz(
                            answerQuestion: answerQuestion,
                            Questions: Questions,
                            questionIndex: questionIndex)
                        : Result(totalScore, _resetQuiz)))));
  }
}
