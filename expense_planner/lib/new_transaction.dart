import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: const InputDecoration(labelText: 'Title'),
                        controller: titleInput,
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Amount'),
                        controller: amountInput,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () => print(titleInput.text),
                        child:
                            Text('ADD', style: TextStyle(color: Colors.purple)),
                      )
                    ]),
              ),
            );
  }
}