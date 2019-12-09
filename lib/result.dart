import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 8 && resultScore > 0) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12 && resultScore > 8) {
      resultText = "Pretty Likeable!";
    } else if (resultScore <= 16 && resultScore > 12) {
      resultText = "You are strange!";
    } else if (resultScore == 0) {
      resultText = "You have no personality";
    } else {
      resultText = "You are so bad!";
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
