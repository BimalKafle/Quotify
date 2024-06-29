import 'package:flutter/material.dart';
import 'LoadingScreen.dart';
import 'package:flutter/services.dart';

class ItemDetailsScreen extends StatelessWidget {
  final int itemId;

  const ItemDetailsScreen({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadItemDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else {
          return Scaffold(
              appBar: AppBar(
                title: Text('Item $itemId Details'),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
              ),
              body: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://via.placeholder.com/150',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.image,
                                        size: 40, color: Colors.grey[500]),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 16),

                          // Title
                          Text(
                            'Item $itemId Title',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),

                          // Categories
                          Text(
                            'Categories: Category 1, Category 2, Category 3',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 16),

                          // Description
                          Text(
                            'This is a sample description of the item. It can be a long text.',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 16),

                          // Copy button
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.blue),
                              foregroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              padding:
                                  WidgetStateProperty.all(EdgeInsets.all(12)),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: () {
                              // Copy description to clipboard
                              Clipboard.setData(ClipboardData(
                                  text:
                                      'This is a sample description of the item. It can be a long text.'));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Description copied to clipboard')),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Copy'),
                                SizedBox(width: 4),
                                Icon(Icons.copy, size: 16),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        }
      },
    );
  }

  Future<void> _loadItemDetails() async {
    await Future.delayed(const Duration(seconds: 2));
    // Load item details from API or database here
  }
}
