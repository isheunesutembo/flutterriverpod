

import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpodtutorial/models/post.dart';
final postRepositoryProvider=Provider((ref)=>PostRepository());
class PostRepository{
   static 
  Future<Post> fetchAlbum() async {
    Map<String, String> requestHeaders = {

      'Content-Type': 'application/json',
      
    };

    final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),headers: requestHeaders);

  if (response.statusCode == 200) {
    var data=jsonDecode(response.body);
   
    return Post.fromJson(data);
  } else {
 
    throw Exception('Failed to load album');
  }
}
}