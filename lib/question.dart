import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // add final so it will not change the variable
  //stateless widget immutable
  //final to make that variable not reaasign after initalize object

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), // set up margin 10 for all of edges
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ),
    );
  }
}
