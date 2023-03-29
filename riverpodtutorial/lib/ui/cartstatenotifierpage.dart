import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/providers/cartstatenotifier.dart';

class CartStateNotifierCartPage extends ConsumerWidget {
  const CartStateNotifierCartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartStateNotifier = ref.watch(cartStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: cartStateNotifier.length,
                physics:const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  final cartItems =cartStateNotifier[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Image.asset(
                            cartItems.image,
                            height: 120,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 16,),
                                Text(cartItems.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500)),
                                        const SizedBox(height: 16,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$${cartItems.newPrice}"),
                                    const SizedBox(width:30),
                                    Text(
                                      "\$${cartItems.oldPrice}",
                                      style:const TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                GestureDetector(onTap: (){
                                  ref.read(cartStateNotifierProvider.notifier).removeProductFromCart(cartItems.productId);
                                },child: Icon(Icons.delete))
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text(
                      "Total:\$${cartStateNotifier.fold<double>(0, (sum, item) => sum + item.newPrice)}"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
