import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/presentation/core/widgets/input_dialog.dart';

class ProductScreen extends StatelessWidget {
  static Widget generateRoute({@required ProductCubit cubit}) {
    return BlocProvider.value(value: cubit, child: ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _onAddProduct(context),
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

  void _onAddProduct(BuildContext context) async {
    final String name = await showDialog(
        context: context,
        builder: (_) => InputDialog(title: "Add Product", hint: "Name"));
    if (name != null) {
      BlocProvider.of<ProductCubit>(context).save(name);
    }
  }
}
