import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  const Result(this.finalScore, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Congratulations, you have completed the quiz',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10,),
          Text('Your Score is $finalScore',
            style: const TextStyle(fontSize: 24),),
        ],
      ),
    );
  }
}
