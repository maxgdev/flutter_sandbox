import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultText {
    String getResultText;
    if (resultScore > 200) {
      getResultText = "You are Awesome: $resultScore";
    } else if (resultScore > 100) {
      getResultText = "You are Good!: $resultScore";
    } else {
      getResultText = "Not Bad: $resultScore!";
    }
    return getResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
            child: Text(
              resultText,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
          FlatButton(
            color: Colors.blue[100],
            onPressed: resetQuiz, 
            child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
