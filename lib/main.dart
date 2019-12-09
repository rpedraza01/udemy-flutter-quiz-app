import 'package:flutter/material.dart';
// import 'package:udemy_flutter_quiz_app/result.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 4},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 4},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 3},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answers': [
        {'text': 'Max', 'score': 4},
        {'text': 'Merrit', 'score': 2},
        {'text': 'Eunika', 'score': 1},
        {'text': 'Al', 'score': 3},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Who's your favorite person?",
      'answers': [
        {'text': 'Barack Obama', 'score': 2},
        {'text': 'Captain America', 'score': 3},
        {'text': 'Batman', 'score': 4},
        {'text': 'Petey', 'score': 1},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "What's your favorite team?",
      'answers': [
        {'text': 'Yankees', 'score': 1},
        {'text': 'Red Sox', 'score': 4},
        {'text': 'Blazers', 'score': 1},
        {'text': 'Lakers', 'score': 4},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {'text': 'Pizza', 'score': 1},
        {'text': 'Burgers', 'score': 1},
        {'text': 'Hot Pot', 'score': 1},
        {'text': 'Tacos', 'score': 1},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Who do you find most attractive?",
      'answers': [
        {'text': 'Scarlett Johannson', 'score': 3},
        {'text': 'Ryan Reynolds', 'score': 4},
        {'text': 'Tessa Thompson', 'score': 1},
        {'text': 'Gal Gadot', 'score': 2},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Which movie genre do you like the most?",
      'answers': [
        {'text': 'Comedy', 'score': 3},
        {'text': 'Drama', 'score': 4},
        {'text': 'Sci-Fi', 'score': 1},
        {'text': 'Action', 'score': 2},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Which country would you most like to travel to?",
      'answers': [
        {'text': 'Costa Rica', 'score': 3},
        {'text': 'France', 'score': 4},
        {'text': 'Australia', 'score': 1},
        {'text': 'Japan', 'score': 2},
        {'text': 'None of the above', 'score': 0}
      ],
    },
    {
      'questionText': "Which video game franchise do you like the most?",
      'answers': [
        {'text': 'Assassin\'s Creed', 'score': 3},
        {'text': 'Call of Duty', 'score': 4},
        {'text': 'Halo', 'score': 1},
        {'text': 'Mass Effect', 'score': 2},
        {'text': 'None of the above', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
