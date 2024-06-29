// // firebase_service.dart
// import '../Class/Post.dart';
// import '../Class/Category.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirebaseService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<List<Post>> fetchPosts() async {
//     final postsRef = _firestore.collection('posts');
//     final postsSnapshot = await postsRef.get();
//     return postsSnapshot.docs.map((doc) => Post.fromMap(doc.data())).toList();
//   }

//   Future<List<Category>> fetchCategories() async {
//     final categoriesRef = _firestore.collection('categories');
//     final categoriesSnapshot = await categoriesRef.get();
//     return categoriesSnapshot.docs
//         .map((doc) => Category.fromMap(doc.data()))
//         .toList();
//   }

//   Future<void> fetchPostCategories(Post post) async {
//     final postRef = _firestore.collection('posts').doc(post.id);
//     final categoriesRef = postRef.collection('categories');
//     final categoriesSnapshot = await categoriesRef.get();
//     post.categories = categoriesSnapshot.docs
//         .map((doc) => Category.fromMap(doc.data()))
//         .toList();
//   }

//   Future<void> fetchCategoryPosts(Category category) async {
//     final categoryRef = _firestore.collection('categories').doc(category.id);
//     final postsRef = categoryRef.collection('posts');
//     final postsSnapshot = await postsRef.get();
//     category.posts =
//         postsSnapshot.docs.map((doc) => Post.fromMap(doc.data())).toList();
//   }
// }
