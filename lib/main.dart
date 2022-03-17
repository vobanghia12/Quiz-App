import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => // this function will run when our app is launched
    runApp(
        MyApp()); //Myapp is a object //runApp is the function imported by material.dart

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement create state
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //this class will  not be reset
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    //all of variables just hold the address
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 50},
        {'text': 'Red', 'score': 40},
        {'text': 'Green', 'score': 30},
        {'text': 'Gray', 'score': 20}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 50},
        {'text': 'Snake', 'score': 40},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 20}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Anna', 'score': 50},
        {'text': 'Jake', 'score': 40},
        {'text': 'Peter', 'score': 30},
        {'text': 'Linda', 'score': 20}
      ],
    },
  ];
  void _answerQuestion(int point) {
    // defined private element
    _totalScore += point; 
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // setState to call build again
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }
  @override // provided by dart // make our code bit cleaner
  Widget build(BuildContext context) // build to build widget
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //title
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(totalScore: _totalScore, resetQuiz: _resetQuiz), // body
        //body only takes on widget
      ),
    ); // need to return widget
    //every widget just a dart class
    // Scafford support in UI
  }
}
