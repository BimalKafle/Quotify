import 'package:flutter/material.dart';
import 'package:quotify/Screen/LoadingScreen.dart';
import 'ItemDetailsScreen.dart';

class CategoryItemsScreen extends StatelessWidget {
  final int categoryId;

  const CategoryItemsScreen(this.categoryId, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Category $categoryId Items'),
            ),
            body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index of Category $categoryId'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailsScreen(itemId: index),
                      ),
                    );
                  },
                );
              },
            ),
          );
        }
      },
    );
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
