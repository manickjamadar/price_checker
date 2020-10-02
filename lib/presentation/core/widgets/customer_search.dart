import 'package:flutter/material.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/presentation/core/widgets/item_search.dart';

class CustomerSearch extends ItemSearch<Customer> {
  CustomerSearch(List<Customer> items) : super(items);
  @override
  Widget build(BuildContext context, String query, List<Customer> customers) {
    if (customers.isEmpty) {
      return buildEmpty();
    }
    return ListView.builder(
      itemBuilder: (_, index) {
        final customer = customers[index];
        return ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(customer.name.value),
        );
      },
      itemCount: customers.length,
    );
  }

  Widget buildEmpty() => Center(child: Text("No Customer Found"));

  @override
  bool filter(String query, Customer customer) {
    return customer.name.value.toLowerCase().contains(query.toLowerCase());
  }
}
