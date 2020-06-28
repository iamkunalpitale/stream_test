import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:streamapp/models/cart_model.dart';

class Cart with ChangeNotifier {

  FoodCart _foodCart = FoodCart(0, 0);

  FoodCart get foodCart => _foodCart;

  StreamController<FoodCart> streamController = StreamController<
      FoodCart>.broadcast();

  get streamSink => streamController.sink;

  get cartStream => streamController.stream;


  void addCart(String itemName) {
    switch (itemName) {
      case "chapati":
        foodCart.chapati++;
        streamSink.add(foodCart);
        break;

      case "dal":
        foodCart.dal++;
        streamSink.add(foodCart);
        break;
    }
  }

  @override
  void dispose() {
    super.dispose();
    streamController.close();
  }
}
final foodItems = Cart();