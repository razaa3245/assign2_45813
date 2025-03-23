import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_title.dart';

class ProductListScreen extends StatelessWidget {
  final String category;

  ProductListScreen({required this.category});

  final Map<String, List<Product>> categoryProducts = {
    'Laptop': [
      Product(title: 'Gaming Laptop', description: 'High-end gaming laptop.', price: 1499.99, imagePath: 'image/laptop.png'),
      Product(title: 'Business Laptop', description: 'Best for work & productivity.', price: 1099.99, imagePath: 'image/laptop.png'),
    ],
    'Smartphone': [
      Product(title: 'Flagship Phone', description: 'Top-tier smartphone with best camera.', price: 999.99, imagePath: 'image/smartphone.png'),
      Product(title: 'Budget Phone', description: 'Affordable smartphone with good features.', price: 399.99, imagePath: 'image/smartphone.png'),
    ],
    'Smartwatch': [
      Product(title: 'Sports Smartwatch', description: 'Perfect for fitness tracking.', price: 199.99, imagePath: 'image/smartwatch.png'),
      Product(title: 'Luxury Smartwatch', description: 'Premium smartwatch with elegant design.', price: 499.99, imagePath: 'image/smartwatch.png'),
    ],
  };

  @override
  Widget build(BuildContext context) {
    final products = categoryProducts[category] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
