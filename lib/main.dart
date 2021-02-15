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

  var _questions = [
    {
      'questionText': 'What\'s your favorite Food?',
      'answers': ['Rice', 'Eba', 'Soup', 'Yams']
    },
    {
      'questionText': 'What\'s your favorite Car?',
      'answers': ['BMW', 'Honda', 'Toyota', 'Porche']
    },
    {
      'questionText': 'What\'s your favorite Film?',
      'answers': ['Matrix', 'Black Panther', 'Bleach', 'Mandelorian']
    },
    {
      'questionText': 'What\'s your favorite Musician?',
      'answers': ['Burna Boy', 'Eddie Grant', 'Junior', 'Mice Paris']
    }
  ];

  void _answerQuestions() {
    // if (_questionsIndex < questions.length-1) {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    // }
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
              : Result()),
    );
  }
}
