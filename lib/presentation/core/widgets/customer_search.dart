import 'package:flutter/material.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/presentation/core/widgets/highlighted_text.dart';
import 'package:price_checker/presentation/core/widgets/item_search.dart';

class CustomerSearch extends ItemSearch<Customer> {
  final void Function(Customer customer) onDelete;
  final void Function(Customer customer) onEdit;
  CustomerSearch(List<Customer> items, {this.onDelete, this.onEdit})
      : super(items);
  @override
  Widget build(BuildContext context, String query, List<Customer> customers) {
    if (customers.isEmpty) {
      return buildEmpty();
    }
    return ListView.builder(
      itemBuilder: (_, index) {
        final customer = customers[index];
        return ListTile(
            onTap: () => close(context, customer),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: HighlightedText(
                highlight: query,
                text: customer.name.value,
                highlightColor: Theme.of(context).accentColor),
            subtitle: Text("${customer.activeProducts.length} Products"),
            trailing: buildMoreButton(context, customer));
      },
      itemCount: customers.length,
    );
  }

  Widget buildEmpty() => Center(child: Text("No Customer Found"));

  Widget buildMoreButton(BuildContext context, Customer customer) {
    final menuItems = ["Edit", "Delete"];
    return PopupMenuButton<int>(
      icon: Icon(Icons.more_vert),
      onSelected: (index) {
        FocusScope.of(context).unfocus();
        close(context, null);
        if (index == 0 && onEdit != null) {
          onEdit(customer);
        } else if (index == 1 && onDelete != null) {
          onDelete(customer);
        }
      },
      itemBuilder: (_) => menuItems
          .asMap()
          .keys
          .map((key) => PopupMenuItem<int>(
                child: Text(menuItems[key]),
                value: key,
              ))
          .toList(),
    );
  }

  @override
  bool filter(String query, Customer customer) {
    return customer.name.value.toLowerCase().contains(query.toLowerCase());
  }
}
