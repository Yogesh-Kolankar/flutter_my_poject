import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
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

  @override
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
          title: const Text("First Flutter App"),
        ),
        body: Container(
          child: Column(
            children: [
              // ui structure :-
              // 1) queston text
              Question(Questions[ questionIndex]),  // it prints Questions according to index

              // 2) queston text                
              Question( Questions[questionIndex]), // again it prints Question here

              // 3) button `Anwser2`
              ElevatedButton(
                onPressed: () {
                  // when user click on anser 2
                  // We Will show second question from the list
                  // we will call `answerQuestion()` here
                  print("answer 2 chosen");
                  answerQuestion(); // it changes the index // index change hoga to 0 se 1 to index[1] ka question show hoga
                },
                child: Text("Anwser2"),
              ),
                // 4) button `Anwser1`
              ElevatedButton(
                onPressed: () => print(
                    "answer 3 chosen"), // yaha apen mathod `answerQuestion` call nhi kar rh to change nhi hoga
                child: Text("Anwser1"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
