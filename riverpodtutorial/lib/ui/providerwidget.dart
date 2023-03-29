import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/providers/provider.dart';

class ProviderWidget extends ConsumerWidget {
  const ProviderWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final name=ref.watch(provider);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Center(child: Text(name,style: TextStyle(fontSize: 20),))),
      
    );
  }
}