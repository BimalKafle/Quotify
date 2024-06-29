import 'package:flutter/material.dart';
import 'Screen/CategoryScreen.dart';
import 'Screen/HomeScreen.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentPageIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//         indicatorColor: Colors.amber,
//         selectedIndex: currentPageIndex,
//         destinations: const <Widget>[
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.category,color: Color(Color.),),
//             label: 'Category',
//           ),
//         ],
//       ),
//       body: <Widget>[
//         /// Home page
//         Card(
//           shadowColor: Colors.transparent,
//           margin: const EdgeInsets.all(8.0),
//           child: SizedBox.expand(
//             child: Center(
//               child: Text(
//                 'Home page',
//                 style: theme.textTheme.titleLarge,
//               ),
//             ),
//           ),
//         ),

//         /// Notifications page
//         const Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             children: <Widget>[
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.notifications_sharp),
//                   title: Text('Notification 1'),
//                   subtitle: Text('This is a notification'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: Icon(Icons.notifications_sharp),
//                   title: Text('Notification 2'),
//                   subtitle: Text('This is a notification'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ][currentPageIndex],
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const CategoryScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.red, // change background color to red
        unselectedItemColor:
            Colors.white, // change unselected icon and text color to white
        selectedItemColor:
            Colors.white, // change selected icon and text color to white
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}
