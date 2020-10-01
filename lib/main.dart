import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/presentation/core/app.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (_) => CustomerCubit()..init(),
    ),
    BlocProvider(create: (_) => ProductCubit()..init()),
  ], child: App()));
}
