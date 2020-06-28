import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streamapp/models/cart_model.dart';
import 'package:streamapp/models/shopping.dart';
import 'package:streamapp/screens/second_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FoodCart>(
        builder: (BuildContext context, FoodCart cart, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('New text'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  print('$context');
                  return StreamProvider<FoodCart>(
                    initialData: foodItems.foodCart,
                    builder: (BuildContext context) => foodItems.cartStream,
                    child: Second(),
                  );
                }
                )
                );
              },
              icon: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                trailing: Icon(Icons.add),
                onTap: () {
                  foodItems.addCart("chapati");
                },
                title: Text('Chapati'),
              ),
            ),
            Card(
              child: ListTile(
                trailing: Icon(Icons.add),
                onTap: () {
                  foodItems.addCart("dal");
                },
                title: Text('Dal'),
              ),
            )
          ],
        ),
      );
    });
  }
}
