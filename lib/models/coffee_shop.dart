import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    Coffee(
      name: 'Americano',
      price: '\$10',
      imagePath: 'lib/images/americano.png',
    ),
    Coffee(
      name: 'Cappuccino',
      price: '\$15',
      imagePath: 'lib/images/cappuccino.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '\$11',
      imagePath: 'lib/images/espresso.png',
    ),
    Coffee(
      name: 'Latte',
      price: '\$13',
      imagePath: 'lib/images/latte.png',
    ),
  ];
  // user cart
  final List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
