import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/customer/facade/i_customer_facade.dart';
import 'package:price_checker/domain/product/facade/product_facade.dart';
import 'package:price_checker/infrastructure/customer/data_source/hive_customer_data_source.dart';
import 'package:price_checker/infrastructure/customer/data_source/i_customer_data_source.dart';
import 'package:price_checker/infrastructure/customer/facade/customer_facade.dart';
import 'package:price_checker/infrastructure/product/data_source/hive_product_data_source.dart';
import 'package:price_checker/infrastructure/product/data_source/i_product_data_source.dart';
import 'package:price_checker/infrastructure/product/facade/product_facade.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  _initApplication();
  _initFacade();
  await _initDataSource();
}

void _initApplication() {
  locator.registerFactory(
      () => CustomerCubit(customerFacade: locator<ICustomerFacade>()));
  locator.registerFactory(
      () => ProductCubit(productFacade: locator<IProductFacade>()));
}

void _initFacade() {
  locator.registerLazySingleton<IProductFacade>(
      () => ProductFacade(dataSource: locator<IProductDataSource>()));
  locator.registerLazySingleton<ICustomerFacade>(
      () => CustomerFacade(dataSource: locator<ICustomerDataSource>()));
}

Future<void> _initDataSource() async {
  final productBox = await Hive.openBox<String>("product");
  final customerBox = await Hive.openBox<String>("customer");
  locator.registerLazySingleton<IProductDataSource>(
      () => HiveProductDataSource(productBox));
  locator.registerLazySingleton<ICustomerDataSource>(
      () => HiveCustomerDataSource(customerBox));
}
