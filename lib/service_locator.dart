import 'package:get_it/get_it.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';

final locator = GetIt.instance;

void initLocator() {
  _initApplication();
}

void _initApplication() {
  locator.registerFactory(() => CustomerCubit());
  locator.registerFactory(() => ProductCubit());
}
