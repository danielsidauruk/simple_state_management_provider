import 'package:flutter/material.dart';

class CarWishListProvider extends ChangeNotifier {
  final List<String> _carWishlist = [];

  List<String> get carWishList => _carWishlist;

  void addData(String carName) {
    _carWishlist.add(carName);
    notifyListeners();
  }
}