import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback reset;

  const Result(this.finalScore, this.reset, {super.key});

  String get resultPhrase {
    var result = 'Congratulations, you have completed the quiz';
    if(finalScore > 8){
      result = 'You are awesome!!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10,),
          Text('Your Score is $finalScore',
            style: const TextStyle(fontSize: 24),),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: reset, child: const Text('Restart'))
        ],
      ),
    );
  }
}
