import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(AnyApp());
}

// Everythings a Widget. "AnyAppHere" main Widget
class AnyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnyAppState();
  }
}

class AnyAppState extends State<AnyApp> {
  var _questionsIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      'questionText': 'What\'s your favorite Colour?',
      'answers': [
        {'text': 'Black', 'score': 50},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 40},
        {'text': 'White', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite Food?',
      'answers': [
        {'text': 'Rice', 'score': 50},
        {'text': 'Eba', 'score': 20},
        {'text': 'Soup', 'score': 40},
        {'text': 'Yams', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite Car?',
      'answers': [
        {'text': 'BMW', 'score': 50},
        {'text': 'Honda', 'score': 20},
        {'text': 'Toyota', 'score': 40},
        {'text': 'Porche', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite Film?',
      'answers': [
        {'text': 'Matrix', 'score': 50},
        {'text': 'Black Panther', 'score': 90},
        {'text': 'Clock Work Orange', 'score': 45},
        {'text': 'Mandelorian', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s your favorite Musician?',
      'answers': [
        {'text': 'Burna Boy', 'score': 50},
        {'text': 'Eddie Grant', 'score': 20},
        {'text': 'Junior', 'score': 40},
        {'text': 'Mice Paris', 'score': 10}
      ]
    }
  ];

  void _answerQuestions(int score) {
    _totalScore += score;

    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print("Question Index: $_questionsIndex of ${_questions.length}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Title'),
          ),
          body: _questionsIndex < _questions.length
              ? Quiz(
                  answerQuestions: _answerQuestions,
                  questions: _questions,
                  questionsIndex: _questionsIndex)
              : Result(_totalScore)
              ),
    );
  }
}
