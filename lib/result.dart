import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
        child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}
