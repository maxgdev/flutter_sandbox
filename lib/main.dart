import 'package:flutter/material.dart';

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

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Question Index: $questionIndex");  
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite Musician?',
      'What\'s your favorite Film?',
      'What\'s your favorite Food?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Title'),
        ),
        body: Column(
          children: [
            Text(
              "${questions[questionIndex]}",
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
              child: Text("Answer 1"),
              // onPressed: () => print("Button 1 pressed! "),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Button 2 pressed! "),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Button 3 pressed! "),
            ),
          ],
        ),
      ),
    );
  }
}
