import 'package:flutter/material.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/customer/models/customer.dart';

class CustomerDetailScreen extends StatelessWidget {
  final Customer customer;

  const CustomerDetailScreen({Key key, @required this.customer})
      : super(key: key);
  static Widget generateRoute({@required Customer customer}) {
    return CustomerDetailScreen(
      customer: customer,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(customer.name.value),
      ),
      body: customer.activeProducts.isEmpty
          ? buildEmptyProduct()
          : buildActiveProducts(customer.activeProducts),
    );
  }

  Widget buildEmptyProduct() {
    return Center(child: Text("No Product Added"));
  }

  Widget buildActiveProducts(List<ActiveProduct> activeProducts) {
    return ListView.builder(
        itemBuilder: (_, index) {
          final activeProduct = activeProducts[index];
          return Card(
            margin: EdgeInsets.all(1),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.local_mall),
              ),
              title: Text(activeProduct.product.name.value),
              trailing: Text(
                "Rs ${activeProduct.price.value}",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: activeProducts.length);
  }
}
