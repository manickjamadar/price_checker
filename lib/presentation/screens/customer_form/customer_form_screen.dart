import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/customer_form/customer_form_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/presentation/core/widgets/input_dialog.dart';
import 'package:price_checker/presentation/screens/select_product/select_product_screen.dart';

class CustomerFormScreen extends StatelessWidget {
  static Widget generateRoute(BuildContext context, {Customer customer}) {
    return BlocProvider(
      create: (_) => CustomerFormCubit(
          customerCubit: BlocProvider.of<CustomerCubit>(context))
        ..init(optionOf(customer)),
      child: CustomerFormScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: Text("Add Customer"), actions: [
          BlocBuilder<CustomerFormCubit, CustomerFormState>(
            builder: (_, state) {
              return IconButton(
                  icon: Icon(Icons.check),
                  onPressed: state.isSaving || !state.customer.isValid
                      ? null
                      : () => _onSave(context));
            },
          ),
        ]),
        body: BlocConsumer<CustomerFormCubit, CustomerFormState>(
          listener: (_, state) {
            state.saveStatus.fold(() {}, (status) {
              status.fold((l) {
                //failure
              }, (r) {
                //success
                _onSaveSuccess(context);
              });
            });
          },
          builder: (_, state) {
            return ReorderableListView(
              header: Column(
                children: [
                  TextFormField(
                    autofocus: true,
                    initialValue: state.customer.name.value,
                    onChanged: (newName) => _onNameChanged(context, newName),
                    decoration: InputDecoration(labelText: "Name"),
                  ),
                  Row(
                    children: [
                      Text("Products(${state.customer.activeProducts.length})"),
                      FlatButton(
                        child: Text("Add Product"),
                        onPressed: () => _onAddProduct(context),
                      )
                    ],
                  )
                ],
              ),
              onReorder: (oldIndex, newIndex) {},
              children: state.customer.activeProducts
                  .map((ap) => ListTile(
                        key: ValueKey(ap.id),
                        leading: CircleAvatar(
                          child: Icon(Icons.local_mall),
                        ),
                        title: Text(ap.product.name.value),
                        subtitle: Text("Rs ${ap.price.value}",
                            style: TextStyle(color: Colors.amber)),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () => _onEditPrice(context, ap),
                            ),
                            IconButton(
                              icon: Icon(Icons.clear, color: Colors.red),
                              onPressed: () => _onClear(context, ap),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }

  void _onSaveSuccess(BuildContext context) {
    Navigator.pop(context);
  }

  void _onSave(BuildContext context) {
    BlocProvider.of<CustomerFormCubit>(context).save();
  }

  void _onClear(BuildContext context, ActiveProduct activeProduct) {
    BlocProvider.of<CustomerFormCubit>(context)
        .productCleared(activeProduct.id);
  }

  void _onNameChanged(BuildContext context, String name) {
    BlocProvider.of<CustomerFormCubit>(context).nameChanged(name);
  }

  void _onEditPrice(BuildContext context, ActiveProduct activeProduct) async {
    final String price = await showDialog(
        context: context,
        builder: (_) => InputDialog(
              hint: "Amount",
              title: "Add Price",
              keyboardType: TextInputType.number,
            ));
    if (price == null || int.tryParse(price) == null) {
      return;
    }
    final int actualPrice = int.tryParse(price);
    BlocProvider.of<CustomerFormCubit>(context)
        .priceUpdated(activeProduct.id, actualPrice);
  }

  void _onAddProduct(BuildContext context) async {
    await BlocProvider.of<ProductCubit>(context).state.maybeWhen(
        orElse: () {},
        loaded: (products) async {
          final selectedProduct = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => SelectProductScreen.generateRoute(products)));
          final String price = await showDialog(
              context: context,
              builder: (_) => InputDialog(
                    hint: "Amount",
                    title: "Add Price",
                    keyboardType: TextInputType.number,
                  ));
          if (price == null || int.tryParse(price) == null) {
            return;
          }
          final int actualPrice = int.tryParse(price);
          BlocProvider.of<CustomerFormCubit>(context)
              .productAdded(selectedProduct, actualPrice);
        });
  }
}
