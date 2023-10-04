import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<String> newlyAddedProducts = [
    "New product 1",
    "New product 2",
    "New product 3",
    // Add more newly added product names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newlyAddedProducts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            newlyAddedProducts[index],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(Icons.shopping_cart),
        );
      },
    );
  }
}