import 'package:flutter/material.dart';

void main() {
  runApp(AnyApp());
}

// Everythings a Widget. "AnyAppHere" main Widget
class AnyApp extends StatelessWidget {
  
  void answerQuestions() {
    print("Button pressed! ");
    
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
            Text(
              "What is the Question?",
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
