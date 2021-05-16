import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
              ),
              FlatButton(
                child: Text('Add Transaction'),
                onPressed: () {
                  // transactions.add(Transaction(
                  //   id: 't3',
                  //   title: titleController.text,
                  //   amount: double.parse(amountController.text),
                  //   date: DateTime.now(),
                  // ));
                },
                textColor: Colors.purple,
              ),
            ]),
      ),
    );
  }
}
