import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

class transaction_card extends StatelessWidget {
  final List<transaction> transactions;
  transaction_card(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: ListView.builder(
          itemBuilder: (contex, index) {
            return Card(
                child: Container(
              child: Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2.0)),
                  child: Text("Rs " + transactions[index].price.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor)),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].item,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      Text(
                        DateFormat.yMMMMd().format(transactions[index].date),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                ),
              ]),
            ));
          },
          itemCount: transactions.length,
        ));
  }
}
