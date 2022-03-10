import 'package:expense_tracker/newtransaction.dart';
import 'package:expense_tracker/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Expense tracker'),
          actions: <Widget>[
            IconButton(
                onPressed: () => {},
                icon: Icon(Icons.add_circle_outline_outlined))
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.add_circle_outline_outlined),
          onPressed: () => {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.blueAccent,
                child: Container(
                    width: double.infinity,
                    child: Text(
                      'Expense graph would be here',
                    )),
                elevation: 5,
              ),
              Newtransaction()
            ],
          ),
        ));
  }
}
