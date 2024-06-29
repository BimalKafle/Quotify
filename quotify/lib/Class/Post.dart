import 'Category.dart';

class Post {
  final String id;
  final String title;
  final String content;
  final String imageUrl;
  List<Category> categories;

  Post(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageUrl,
      this.categories = const []});

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      imageUrl: map['imageUrl'],
      categories: (map['categories'] as List<dynamic>)
          .map((category) => Category.fromMap(category))
          .toList(),
    );
  }
}
