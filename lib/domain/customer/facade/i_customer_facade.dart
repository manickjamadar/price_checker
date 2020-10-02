import 'package:dartz/dartz.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/customer/models/customer.dart';

abstract class ICustomerFacade {
  Future<Either<Error, Unit>> create(Customer customer);
  Future<Either<Error, Unit>> update(Customer customer);
  Future<Either<Error, Unit>> delete(UniqueId id);
  Future<Either<Error, List<Customer>>> findAll();
}
