import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answer;
  var selectHandler;
  Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child:
            ElevatedButton(onPressed: selectHandler, child: Text(answer)));
  }
}
