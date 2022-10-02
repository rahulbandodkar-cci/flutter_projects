import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var finalScore = 0;
  final _questions = [
      {
        'question': 'What is your favourite animal ?', 
        'answers': [
          {
            'text': 'Dog',
            'score': 5
          }, 
          {
            'text': 'Cat',
            'score': 2
          }, 
          {
            'text': 'Elephant',
            'score': 4
          }
        ]
       },
      {
        'question': 'What is your favourite color ?', 
        'answers': [
          {
            'text': 'Red',
            'score': 3
          }, 
          {
            'text': 'Black',
            'score': 5
          }, 
          {
            'text': 'Green',
            'score': 2
          }
        ]
      },
  ];

  void _answerQuestion(int score){
    setState(() {
      if(_questionIndex < _questions.length){
       _questionIndex += 1;
      }
      finalScore += score;
    });
  }

  @override
  Widget build(BuildContext context){
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz app'),
        ),
        body: _questionIndex < _questions.length ? Quiz(_questions, _answerQuestion, _questionIndex) 
        : Result(finalScore),
      )
      );
  }
}
