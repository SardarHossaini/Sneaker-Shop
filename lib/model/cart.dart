import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class Cart extends ChangeNotifier {
  // Shop Shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Max 270',
        price: '180',
        imagepath: 'assets/images/test1.png',
        description: 'A lightweight and stylish shoe with a bold heel design.'),
    Shoe(
        name: 'Nike Air Zoom Pegasus',
        price: '130',
        imagepath: 'assets/images/test2.png',
        description: 'Trusted cushioning and support for everyday runners.'),
    Shoe(
        name: 'Adidas Ultraboost',
        price: '200',
        imagepath: 'assets/images/test3.png',
        description: 'Responsive running shoes with adaptive comfort.'),
    Shoe(
        name: 'Puma RS-X',
        price: '150',
        imagepath: 'assets/images/test4.png',
        description: 'Retro design meets modern comfort for everyday wear.'),
    Shoe(
        name: 'New Balance 574',
        price: '100',
        imagepath: 'assets/images/test5.png',
        description: 'Classic sneaker with iconic style and durable support.'),
    Shoe(
        name: 'Converse Chuck 70',
        price: '90',
        imagepath: 'assets/images/test6.png',
        description: 'A timeless high-top design with upgraded materials.'),
    Shoe(
        name: 'Jordan Delta 2',
        price: '160',
        imagepath: 'assets/images/test7.png',
        description: 'Futuristic streetwear shoes with breathable layers.'),
  ];

  // user Cart shoes
  List<Shoe> userCart = [];

  // Favorite Shoes
  List<Shoe> favoriteShoes = [];
  // get Shoe List
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // get favorite shoes
  List<Shoe> getFavoriteShoes() {
    return favoriteShoes;
  }

  // add item to user cart
  void addItemToUserCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // delete item from user Cart
  void deleteItemFromUserCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  // add item to favorite
  void addItemToFavorite(Shoe shoe) {
    favoriteShoes.add(shoe);
    notifyListeners();
  }

  // delete item from favorite
  void deleteItemFromFavorite(Shoe shoe) {
    favoriteShoes.remove(shoe);
    notifyListeners();
  }
}
