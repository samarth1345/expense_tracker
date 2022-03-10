import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Addtransaction extends StatelessWidget {
  final tempamount = TextEditingController();
  final tempitem = TextEditingController();
  final Function addtransaction;
  Addtransaction({this.addtransaction});
  void adddata() {
    if (tempitem.text.isEmpty || int.parse(tempamount.text) <= 0) return;
    addtransaction(tempitem.text, int.parse(tempamount.text));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
              child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Enter new item'),
              controller: tempitem,
              onSubmitted: (_) => adddata(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter price'),
              controller: tempamount,
              keyboardType: TextInputType.number,
              //just to submt without pressing "Add transaction"
              onSubmitted: (_) => adddata(),
            ),
            ElevatedButton(
                onPressed: adddata,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  'Add transaction',
                  style: TextStyle(color: Colors.purple),
                )),
          ]))
        ],
      ),
    );
  }
}
