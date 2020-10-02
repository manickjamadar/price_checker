import 'package:flutter/foundation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:dartz/dartz.dart';
import 'package:price_checker/domain/customer/facade/i_customer_facade.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/infrastructure/customer/data_source/i_customer_data_source.dart';
import 'package:price_checker/infrastructure/customer/entity/customer/customer_entity.dart';

class CustomerFacade extends ICustomerFacade {
  final ICustomerDataSource dataSource;

  CustomerFacade({@required this.dataSource});
  @override
  Future<Either<Error, Unit>> create(Customer customer) async {
    try {
      await dataSource.create(CustomerEntity.fromModel(customer));
      return Right(unit);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, Unit>> delete(UniqueId id) async {
    try {
      await dataSource.delete(id.value);
      return Right(unit);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, List<Customer>>> findAll() async {
    try {
      final entityList = await dataSource.findAll();
      return Right(entityList.map((e) => e.toModel()).toList());
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, Unit>> update(Customer customer) async {
    try {
      await dataSource.update(CustomerEntity.fromModel(customer));
      return Right(unit);
    } catch (_) {
      return Left(Error());
    }
  }
}
