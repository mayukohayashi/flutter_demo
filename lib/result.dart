import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did IT!";

    if (resultScore <= 10) {
      resultText = "you are awesome";
    } else if (resultScore <= 40) {
      resultText = "Prety good";
    } else if (resultScore <= 80) {
      resultText = "SO GOOD";
    } else {
      resultText = "WHAT?";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          child: Text("Restart Quiz!"),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
