import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:streamapp/screens/home_screen.dart';
import 'models/cart_model.dart';
import 'models/shopping.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamProvider<FoodCart>(
        initialData: foodItems.foodCart,
        builder: (context)=> foodItems.cartStream,
        child:  MyHomePage(),
      )
    );
  }
}


