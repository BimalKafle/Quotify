// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirebaseConfig {
//   static const String projectId = 'your-project-id';
//   static const String apiKey = 'your-api-key';
//   static const String authDomain = 'your-auth-domain';
//   static const String databaseUrl = 'https://your-database-url.firebaseio.com';
//   static const String storageBucket = 'your-storage-bucket';

//   static Future<void> initializeFirebase() async {
//     await Firebase.initializeApp(
//       options: const FirebaseOptions(
//         apiKey: apiKey,
//         appId: projectId,
//         messagingSenderId: 'your-messaging-sender-id',
//         projectId: projectId,
//       ),
//     );

//     // Initialize Firestore
//     FirebaseFirestore.instance.settings = const Settings(
//       host: databaseUrl,
//       sslEnabled: true,
//       persistenceEnabled: true,
//     );
//   }
// }
