import 'package:expense_tracker/transaction.dart';
import 'package:flutter/material.dart';
import './addtransaction.dart';
import './transaction_card.dart';

class Newtransaction extends StatefulWidget {
  @override
  State<Newtransaction> createState() => _NewtransactionState();
}

class _NewtransactionState extends State<Newtransaction> {
  final List<transaction> transactions = [
    transaction(id: 'it1', item: 'shoes', price: 2000, date: DateTime.now()),
    transaction(id: 'it2', item: 'pants', price: 1000, date: DateTime.now()),
  ];
  int no_item = 2;
  void _addtransaction(String it, int pr) {
    no_item++;
    final newtx = transaction(
        id: 'it' + no_item.toString(),
        item: it,
        price: pr,
        date: DateTime.now());
    Future.delayed(Duration.zero, () {
      setState(() {
        transactions.add(newtx);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Addtransaction(addtransaction: _addtransaction),
        transaction_card(transactions)
      ],
    );
  }
}
