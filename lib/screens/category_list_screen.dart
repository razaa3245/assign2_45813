import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class Category {
  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

class CategoryListScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Laptop', imagePath: 'image/laptop.png'),
    Category(name: 'Smartphone', imagePath: 'image/smartphone.png'),
    Category(name: 'Smartwatch', imagePath: 'image/smartwatch.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(categories[index].imagePath, width: 50, height: 50),
            title: Text(categories[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductListScreen(category: categories[index].name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
