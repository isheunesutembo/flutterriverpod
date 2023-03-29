import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtutorial/models/post.dart';
import 'package:riverpodtutorial/repository/postrepository.dart';
final getPostProvider=FutureProvider<Post>((ref){
  final postrepository=ref.watch(postRepositoryProvider);
  return PostRepository.fetchAlbum();
});
class FutureProviderWidget extends ConsumerWidget {
  const FutureProviderWidget({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final posts=ref.watch(getPostProvider);
    return Scaffold(
      body: posts.when(data: (data){
        return Text(data.title);

      }, error: (error,stackTrace)=>Text(error.toString()), loading:()=> Center(child: CircularProgressIndicator(),)),

    );
  }
}