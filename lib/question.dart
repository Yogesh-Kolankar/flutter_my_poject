import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questiontext;
  

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:EdgeInsets.all(20),
      child:Text(
        questiontext,style:TextStyle(
          fontSize: 26,fontStyle:FontStyle.normal,
          color:Colors.blue,backgroundColor: Colors.yellow),
          textAlign:TextAlign.center
    ));
  }
}
