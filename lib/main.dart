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
  var questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Question Index: $questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s your favorite Musician?',
    //   'What\'s your favorite Film?',
    //   'What\'s your favorite Food?',
    //   'What\'s your favorite Car?',
    //   'What\'s your favorite Ice-cream?',
    // ];
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Title'),
        ),
        body: Column(
          children: [
            Question(
              "${questions[questionIndex]['questionText']}",
            ),
            // Answer(_answerQuestions),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
