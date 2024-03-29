import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function() resetHandler;

  Result( this.resultScore,  this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it ";

    if (resultScore <= 8) {
      resultText = "You are awesome and Innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeble!";
    } else if (resultScore <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ElevatedButton(onPressed:resetHandler, child: const Text("Reset Quiz"))
      ],
    ));
  }
}
