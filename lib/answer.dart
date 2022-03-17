import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {
  final Function selectHandler;
  final String textField;
  Answer(this.selectHandler, this.textField);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //to get as much as width we can get
      child: RaisedButton(
        color: Colors.blue, // background color 
        textColor: Colors.white,
        child: Text(textField),
        onPressed: selectHandler,
      )
    );
  }
}