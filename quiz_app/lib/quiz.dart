import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final Function(int) _answerQuestion;
  final int _questionIndex;

  const Quiz(this._questions, this._answerQuestion, this._questionIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(_questions[_questionIndex]['question'].toString()),
            ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) => Answer(answer, _answerQuestion)).toList()
          ],
        );
  }
}