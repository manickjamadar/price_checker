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
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
    );
  }
}
