import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streamapp/models/cart_model.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FoodCart>(
      builder: (context, FoodCart cart, _) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.backspace),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                    trailing: Text('${cart.chapati}'),
                    title: Text('Chapati'),
                  ),
                ),
                Card(
                  child: ListTile(
                    trailing: Text('${cart.dal}'),
                    title: Text('Dal'),
                  ),
                ),
              ],
            ));
      },
    );
  }
}
