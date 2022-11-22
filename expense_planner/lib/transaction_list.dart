import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;
  const TransactionList(this.userTransactions);


  @override
  Widget build(BuildContext context) {
    return Column(
              children: userTransactions
                  .map((e) => Card(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                '\$ ${e.amount.toString()}',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple, width: 2)),
                              padding: EdgeInsets.all(10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  DateFormat.yMMMd().format(e.date),
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            );
  }
}