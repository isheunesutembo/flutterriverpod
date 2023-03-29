// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
class Post {
 
  final int id;
  final String title;

  const Post({
    
    required this.id,
    required this.title,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
     
      id: json['id'],
      title: json['title'],
    );
  }

  Post copyWith({
    int? id,
    String? title,
  }) {
    return Post(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  

  @override
  String toString() => 'Post(id: $id, title: $title)';

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode;
}
