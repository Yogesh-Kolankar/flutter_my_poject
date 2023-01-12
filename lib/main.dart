import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var Questions = [
      "What is your favorite color?",
      "what is your fovrite animal?",
      "what is your fovrite animal?",
      "what is your fovrite animal?",
      "what is your fovrite animal?"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("First Flutter App"),
            ),
            body: Center(
                child: Container(
                    child: Center(
                        child: Column(
              children: [
                Question(Questions[questionIndex]),
                ElevatedButton(
                  onPressed: () => print("answer 2 chosen"),
                  child: Text("Anwser2"),
                ),
                ElevatedButton(
                  onPressed: () => print("answer 3 chosen"),
                  child: Text("Anwser1"),
                )
              ],
            ))))));
  }
}
