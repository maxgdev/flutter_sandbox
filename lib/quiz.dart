import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  final List<Map<String, Object>> questions;
  final int questionsIndex;

  Quiz(
      {@required this.answerQuestions,
      @required this.questions,
      @required this.questionsIndex}
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          "${questions[questionsIndex]['questionText']}",
        ),
        // Answer(_answerQuestions),
        ...(questions[questionsIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          // return Answer(answerQuestions(()=> answer['score']), answer['text']);
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
