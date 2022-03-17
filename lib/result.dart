import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result({@required this.totalScore, @required this.resetQuiz});
  String get resultPhrase {
    String resultText = 'You did it';
    if (totalScore <= 200) {
      resultText = 'You are awesome and innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            onPressed: resetQuiz,
            child: Text(
                "Reset Quiz"),
            textColor: Colors.blue,),
             // Flatbutton button without background color
      ]),
    );
  }
}
