import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;

  TransactionList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, idx) => Card(
            child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 50,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              )),
              child: Text(
                '\$${_userTransactions[idx].amount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _userTransactions[idx].title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(DateFormat.yMMMd().format(_userTransactions[idx].date),
                    style: TextStyle(
                      color: Colors.grey,
                    ))
              ],
            )
          ],
        )),
        itemCount: _userTransactions.length,
      ),
    );
  }
}
