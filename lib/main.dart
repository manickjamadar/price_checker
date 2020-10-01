import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/presentation/core/app.dart';
import 'package:price_checker/service_locator.dart';

void main() {
  initLocator();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      lazy: false,
      create: (_) => locator<CustomerCubit>()..init(),
    ),
    BlocProvider(lazy: false, create: (_) => locator<ProductCubit>()..init()),
  ], child: App()));
}
