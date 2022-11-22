import 'package:expense_planner/transaction_list.dart';
import 'package:flutter/material.dart';

import 'models/transaction.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> userTransactions = [
    Transaction(id: '1', title: 'New shoes', date: DateTime.now(), amount: 200),
    Transaction(
        id: '2', title: 'New clothes', date: DateTime.now(), amount: 179),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(userTransactions)
      ],
    );
  }
}