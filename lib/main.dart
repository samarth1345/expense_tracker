import 'package:expense_tracker/transaction.dart';
import 'package:expense_tracker/transaction_card.dart';
import 'package:flutter/material.dart';

import 'addtransaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expense tracker',
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'OpenSans'));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  void startAddTransactions(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Addtransaction(addtransaction: _addtransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Expense tracker'),
          actions: <Widget>[
            IconButton(
                onPressed: () => startAddTransactions(context),
                icon: Icon(Icons.add_circle_outline_outlined))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add_circle_outline_outlined),
          onPressed: () => startAddTransactions(context),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                color: Theme.of(context).primaryColor,
                child: Container(
                    width: double.infinity,
                    child: Text(
                      'Expense graph would be here',
                    )),
                elevation: 5,
              ),
              //Addtransaction(addtransaction: _addtransaction),
              transaction_card(transactions)
            ],
          ),
        ));
  }
}
