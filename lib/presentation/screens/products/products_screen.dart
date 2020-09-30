import 'package:flutter/material.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';

class ProductScreen extends StatelessWidget {
  static Widget generateRoute() {
    return ProductScreen();
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: ProductName("Potato")),
      Product(name: ProductName("Tomato")),
      Product(name: ProductName("Belt")),
      Product(name: ProductName("Belt")),
      Product(name: ProductName("Belt")),
      Product(name: ProductName("Belt")),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemBuilder: (_, index) {
              final product = products[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.local_mall),
                  ),
                  title: Text(product.name.value),
                ),
              );
            },
            itemCount: products.length),
      ),
    );
  }
}
