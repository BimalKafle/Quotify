import 'Post.dart';

class Category {
  final String id;
  final String name;
  List<Post> posts;

  Category({required this.id, required this.name, this.posts = const []});

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
      posts: (map['posts'] as List<dynamic>)
          .map((post) => Post.fromMap(post))
          .toList(),
    );
  }
}
