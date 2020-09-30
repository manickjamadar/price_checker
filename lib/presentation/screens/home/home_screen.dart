import 'package:flutter/material.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';
import 'package:price_checker/domain/active_product/value_objects/product_price.dart';
import 'package:price_checker/presentation/screens/products/products_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Customer> customers = [
      Customer(name: CustomerName("Israil"), activeProducts: [
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
      ]),
      Customer(name: CustomerName("Israil"), activeProducts: [
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
      ]),
      Customer(name: CustomerName("Israil"), activeProducts: [
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
        ActiveProduct(
            price: ProductPrice(352),
            product: Product(name: ProductName("Potato"))),
      ]),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("Customers"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_mall),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ProductScreen.generateRoute())),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final customer = customers[index];
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(customer.name.value),
            subtitle: Text("${customer.activeProducts.length} Products"),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          );
        },
        itemCount: customers.length,
      ),
    );
  }
}
