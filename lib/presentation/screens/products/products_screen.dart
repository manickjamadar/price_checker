import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/presentation/core/helpers/deletor.dart';
import 'package:price_checker/presentation/core/widgets/empty_alert.dart';
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
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (_, state) {
          return state.when(
              inital: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (products) => products.isEmpty
                  ? buildEmpty()
                  : buildProducts(context, products),
              error: () => Center(child: Text("Something went wrong")));
        },
      ),
    );
  }

  Widget buildEmpty() {
    return EmptyAlert(
      icon: Icons.remove_shopping_cart,
      statement: "No Product Available",
    );
  }

  Widget buildProducts(BuildContext context, List<Product> products) {
    return ListView.builder(
        itemBuilder: (_, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(1),
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.local_mall),
              ),
              title: Text(product.name.value),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _onEditProduct(context, product),
                  ),
                  Builder(
                    builder: (context) => IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _onDelete(context, product),
                    ),
                  )
                ],
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

  void _onEditProduct(BuildContext context, Product product) async {
    final String name = await showDialog(
        context: context,
        builder: (_) => InputDialog(
              title: "Edit Product",
              hint: "Name",
              initialValue: product.name.value,
            ));
    if (name != null) {
      BlocProvider.of<ProductCubit>(context).update(product.id, name);
    }
  }

  void _onDelete(BuildContext context, Product product) async {
    final deletor = Deletor(product.id);
    final duration = Duration(seconds: 3);
    BlocProvider.of<ProductCubit>(context).delete(deletor);
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(SnackBar(
      duration: duration,
      content: Text(
        "${product.name.value} deleted successfully",
        style: TextStyle(color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      backgroundColor: Colors.green,
      action: SnackBarAction(
        label: "Undo",
        onPressed: () => deletor.undo(),
        textColor: Colors.white,
      ),
    ));
    await Future.delayed(duration);
    if (deletor.canPerform) {
      deletor.delete();
    }
  }
}
