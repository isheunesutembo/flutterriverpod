import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/repository/streamrepository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

final streamValueProvider=StreamProvider.autoDispose((ref){
  final streamRepository=ref.watch(streamRepositoryProvider);
  return streamRepository.getStream();
});
class StreamProviderWidget extends ConsumerWidget {
   StreamProviderWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final stream=ref.watch(streamValueProvider);
   
    return Scaffold(
      appBar: AppBar(),
      body:stream.when(data: (data){
        return Center(child: Text(data.toString(),style: TextStyle(color:Colors.black,fontSize: 30),),);

      }, error: (error,stackTrace)=>Text(error.toString()), loading: ()=>const CircularProgressIndicator())
    );
  }
  
}

