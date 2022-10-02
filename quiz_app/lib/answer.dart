import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function(int) onPressed;
  final Map<String, Object> answer;

  const Answer(this.answer, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(6),
      child: ElevatedButton(onPressed: () => onPressed(answer['score'] as int), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)), child: Text(answer['text'] as String),),   
    );
  }
}