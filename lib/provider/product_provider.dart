import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../model/product_model.dart';
import '../services/services.dart';

class ProductProvider with ChangeNotifier{
  List<Productes> _productes=[];
  final List<Productes> _cartList = [];
  Future<void> fetchProducts() async {
    try {
      _productes = await Services.getProductsDatas();
      notifyListeners();
    } catch (e) {
      // Handle errors if needed
    }
  }

  List<Productes> get getProductes => _productes;
  List<Productes> get myList => _cartList;

  int cartCount(){
    var count = _cartList.length;
    Hive.box('myBox').put('intValue', count);
    notifyListeners();
    return count;
  }

  void addItem(Productes movie){
    _cartList.add(movie);
    cartCount();
    notifyListeners();
  }
  void removeItems(Productes movies){
    _cartList.remove(movies);
    cartCount();
    notifyListeners();
  }
  void removeCartItem(Productes movies){
    _cartList.remove(movies);
    cartCount();
    notifyListeners();
  }

}