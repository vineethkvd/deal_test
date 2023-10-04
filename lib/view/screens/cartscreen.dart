import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Product> cartItems = [
    Product(name: 'New Product', price: 9.99),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(cartItems[index].name),
            subtitle: Text("\$${cartItems[index].price.toStringAsFixed(2)}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add item
                    setState(() {
                      cartItems.add(Product(name: 'New Product', price: 9.99));
                    });
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Remove item
                    setState(() {
                      cartItems.removeAt(index);
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });
}
