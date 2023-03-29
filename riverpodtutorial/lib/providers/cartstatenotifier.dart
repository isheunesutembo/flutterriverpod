import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/models/product.dart';
final cartStateNotifierProvider=StateNotifierProvider.autoDispose<CartNotifier,List<Product>>((ref)=>
 CartNotifier());
class CartNotifier extends StateNotifier<List<Product>>{
  CartNotifier():super([]);

  
  void addProductToCart(Product product){ state=[...state,product];}

  void removeProductFromCart(int productId){
    state=[for (final product in state)if(productId !=product.productId)product];
  }

}