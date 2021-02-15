import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
      child: Text(
        resultText,
        style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
      ),
    );
  }
}
