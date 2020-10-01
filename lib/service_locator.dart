import 'package:get_it/get_it.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/application/product/product_cubit.dart';
import 'package:price_checker/domain/product/facade/product_facade.dart';
import 'package:price_checker/infrastructure/product/facade/product_facade.dart';

final locator = GetIt.instance;

void initLocator() {
  _initApplication();
  _initFacade();
}

void _initApplication() {
  locator.registerFactory(() => CustomerCubit());
  locator.registerFactory(
      () => ProductCubit(productFacade: locator<IProductFacade>()));
}

void _initFacade() {
  locator.registerLazySingleton<IProductFacade>(() => ProductFacade());
}
