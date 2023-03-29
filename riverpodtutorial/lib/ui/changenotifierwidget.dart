import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/data/fakedata.dart';
import 'package:riverpodtutorial/providers/cartchangenotifier.dart';
import 'package:riverpodtutorial/ui/changenotifiercartpage.dart';

class ChangeNotifierWidget extends ConsumerWidget {
  const ChangeNotifierWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final cartNotifier=ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: SingleChildScrollView(child: 
      GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 2/3,mainAxisSpacing: 2),shrinkWrap: true, itemCount: FakeData.products.length,itemBuilder: (context,index){
        final products=FakeData.products[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 2,
            child: Stack(children: [
              Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Flexible(child: Image.asset(products.image,height: 150,)),
          
                  Text(products.name,style:const TextStyle(fontSize: 20,color: Colors.black),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Text("\$${products.newPrice}",style:const TextStyle(fontSize: 15,color: Colors.black)),
                       Text("\$${products.oldPrice}",style:const TextStyle(fontSize: 15,color: Colors.blue,decoration: TextDecoration.lineThrough))
                    ],),
                  ),
                  ElevatedButton(onPressed: (){
                    ref.read(cartNotifierProvider.notifier).addToCart(products);
                  }, child: Text("add to cart"))
                ],
              ),
            ),
        Positioned(top: 0,right: 0,child: GestureDetector(onTap:(){
           Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangeNotifierCartPage()) );
        } ,child: Row(
          children: [
            Icon(Icons.shopping_bag_rounded,color: Colors.blue,),
            Text(cartNotifier.cart.length.toString(),style: TextStyle(color: Colors.black),)
          ],
        )))
            ],)
          ),
        );
      },),)),
    );
  }
}