import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/cubit/product_cubit.dart';
import 'package:price_checker/domain/product/models/product.dart';

class ProductScreen extends StatelessWidget {
  static Widget generateRoute({@required ProductCubit cubit}) {
    return BlocProvider.value(value: cubit, child: ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
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
        child: BlocBuilder<ProductCubit, ProductState>(
          builder: (_, state) {
            return state.when(
                inital: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                loaded: (products) =>
                    products.isEmpty ? buildEmpty() : buildProducts(products),
                error: () => Center(child: Text("Something went wrong")));
          },
        ),
      ),
    );
  }

  Widget buildEmpty() {
    return Center(child: Text("No Product Availabile"));
  }

  Widget buildProducts(List<Product> products) {
    return ListView.builder(
        itemBuilder: (_, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.local_mall),
              ),
              title: Text(product.name.value),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          );
        },
        itemCount: products.length);
  }
}
