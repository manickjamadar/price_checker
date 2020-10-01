import 'package:flutter/material.dart';
import 'package:price_checker/domain/product/models/product.dart';

class SelectProductScreen extends StatelessWidget {
  const SelectProductScreen({Key key, @required this.products})
      : super(key: key);

  static Widget generateRoute(List<Product> products) {
    return SelectProductScreen(
      products: products,
    );
  }

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Product"),
      ),
      body: products.isEmpty ? buildEmpty() : buildProducts(context),
    );
  }

  Widget buildEmpty() {
    return Center(
      child: Text("No Product Available"),
    );
  }

  Widget buildProducts(BuildContext context) {
    return ListView.builder(
        itemBuilder: (_, index) {
          final product = products[index];
          return ListTile(
            onTap: () {
              Navigator.pop(context, product);
            },
            leading: CircleAvatar(
              child: Icon(Icons.local_mall),
            ),
            title: Text(product.name.value),
            trailing: Icon(Icons.radio_button_unchecked),
          );
        },
        itemCount: products.length);
  }
}
