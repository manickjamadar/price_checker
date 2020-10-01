import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/customer_form/customer_form_cubit.dart';

class CustomerFormScreen extends StatelessWidget {
  static Widget generateRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomerFormCubit(),
      child: CustomerFormScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Customer"),
        ),
        body: BlocBuilder<CustomerFormCubit, CustomerFormState>(
          builder: (_, state) {
            return ReorderableListView(
              header: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Name"),
                  ),
                  Row(
                    children: [
                      Text("Products(0)"),
                      FlatButton(
                        child: Text("Add Product"),
                        onPressed: () {},
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
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {},
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
}
