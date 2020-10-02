import 'package:flutter/material.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/presentation/core/widgets/item_search.dart';
import '../helpers/string_extension.dart';

class ProductSearch extends ItemSearch<Product> {
  final List<Product> products;
  ProductSearch(this.products) : super(products);

  @override
  Widget build(BuildContext context, String query, List<Product> items) {
    if (items.isEmpty) {
      return Center(child: Text("No Product found"));
    }
    return ListView.builder(
        itemBuilder: (_, index) {
          final product = items[index];
          return ListTile(
            onTap: () {
              close(context, product);
            },
            leading: CircleAvatar(
              child: Icon(Icons.local_mall),
            ),
            title: Text(product.name.value.capitalize()),
            trailing: Icon(Icons.radio_button_unchecked),
          );
        },
        itemCount: items.length);
  }

  @override
  bool filter(String query, Product item) {
    print("product $query");
    final b = item.name.value.toLowerCase().contains(query.toLowerCase());
    print(b);
    return b;
  }
}
