import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/models/product.dart';
final cartNotifierProvider=ChangeNotifierProvider.autoDispose<CartNotifier>((ref) => CartNotifier());
class CartNotifier extends ChangeNotifier{
  final List<Product> cart=[];
  void addToCart(Product product){
    cart.add(product);
    notifyListeners();
  }

  void deleteCartItem(int productId){
    cart.remove(cart.firstWhere((element) => element.productId==productId));
  }
}