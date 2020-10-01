import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/presentation/screens/customer_form/customer_form_screen.dart';
import 'package:price_checker/presentation/screens/products/products_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _onAddCustomer(context),
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
                    builder: (_) => ProductScreen.generateRoute(
                        cubit: BlocProvider.of<ProductCubit>(context)))),
          )
        ],
      ),
      body: BlocBuilder<CustomerCubit, CustomerState>(
        builder: (_, state) {
          return state.when(
            inital: () => Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (customers) => customers.isEmpty
                ? buildEmpty()
                : buildCustomer(context, customers),
            error: () => Center(child: Text("Something went wrong, try again")),
          );
        },
      ),
    );
  }

  Widget buildEmpty() {
    return Center(child: Text("No Customer Available"));
  }

  Widget buildCustomer(BuildContext context, List<Customer> customers) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final customer = customers[index];
        return ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(customer.name.value),
          subtitle: Text("${customer.activeProducts.length} Products"),
          trailing: buildMoreButton(context),
        );
      },
      itemCount: customers.length,
    );
  }

  Widget buildMoreButton(BuildContext context) {
    final menuItems = ["Edit", "Delete"];
    return PopupMenuButton<int>(
      icon: Icon(Icons.more_vert),
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

  void _onAddCustomer(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CustomerFormScreen.generateRoute(context)));
  }
}
