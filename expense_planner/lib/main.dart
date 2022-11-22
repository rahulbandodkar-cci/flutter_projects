import 'package:expense_planner/user_transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Expense planner')),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                child: Text('Chart'),
                width: double.infinity,
              ),
              elevation: 5,
              color: Colors.blueAccent,
            ),
            UserTransactions()
          ])
    );
  }
}
