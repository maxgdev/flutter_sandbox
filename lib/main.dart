import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  var questions = [
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
    if (_questionsIndex < questions.length-1) {
      setState(() {
        _questionsIndex = _questionsIndex + 1;
      });
    }
    print("Question Index: $_questionsIndex of ${questions.length}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Title'),
        ),
        body: Column(
          children: [
            Question(
              "${questions[_questionsIndex]['questionText']}",
            ),
            // Answer(_answerQuestions),
            ...(questions[_questionsIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
