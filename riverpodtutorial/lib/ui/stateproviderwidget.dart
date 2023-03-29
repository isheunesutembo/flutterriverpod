import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider=StateProvider.autoDispose<int>((ref)=>0);
class StateProviderWidget extends ConsumerWidget {
  const StateProviderWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final counter=ref.watch(stateProvider);
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
       ref.read(stateProvider.notifier).state++;
      },child:const Icon(Icons.add),),
      body: SafeArea(child: Column(children: [
        Center(child: Text(counter.toString(),style: TextStyle(color: Colors.black,fontSize: 20),)),
        
      ],)),
    );
  }
}