import 'package:flutter/material.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/presentation/core/widgets/empty_alert.dart';
import 'package:price_checker/presentation/core/widgets/highlighted_text.dart';
import 'package:price_checker/presentation/core/widgets/item_search.dart';

class ProductSearch extends ItemSearch<Product> {
  final List<Product> products;
  ProductSearch(this.products) : super(products);

  @override
  Widget build(BuildContext context, String query, List<Product> items) {
    return items.isEmpty
        ? buildEmpty()
        : ListView.builder(
            itemBuilder: (_, index) {
              final product = items[index];
              return ListTile(
                onTap: () {
                  close(context, product);
                },
                leading: CircleAvatar(
                  child: Icon(Icons.local_mall),
                ),
                title: HighlightedText(
                    highlight: query,
                    text: product.name.value,
                    highlightColor: Theme.of(context).accentColor),
                trailing: Icon(Icons.radio_button_unchecked),
              );
            },
            itemCount: items.length);
  }

  Widget buildEmpty() => EmptyAlert(
        icon: Icons.search,
        statement: "No Product Found",
      );

  @override
  bool filter(String query, Product item) {
    return item.name.value.toLowerCase().contains(query.toLowerCase());
  }
}
