import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 10 && resultScore > 0) {
      resultText = "You got taste!";
    } else if (resultScore <= 20 && resultScore > 10) {
      resultText = "You're okay!";
    } else if (resultScore <= 30 && resultScore > 20) {
      resultText = "You are strange!";
    } else if (resultScore == 0) {
      resultText = "You have no personality...";
    } else {
      resultText = "You should probably like new things!";
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
          RaisedButton(
            child: Text("Restart Quiz"),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
