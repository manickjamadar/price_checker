import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/presentation/core/helpers/deletor.dart';

part 'customer_state.dart';
part 'customer_cubit.freezed.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit() : super(_Initial());

  //events
  void init() {
    //Todo: get all customers
    emit(CustomerState.loaded(customers: []));
  }

  void save(Customer customer) {
    if (!customer.isValid) {
      return;
    }

    state.maybeWhen(
        orElse: () {},
        loaded: (customers) {
          final newList = [...customers, customer];
          emit(CustomerState.loaded(customers: newList));
        });
  }

  void update(Customer customer) {
    state.maybeWhen(
        orElse: () {},
        loaded: (customers) {
          final newList = customers.map((c) {
            if (c.id == customer.id && customer.isValid) {
              return customer;
            }
            return c;
          }).toList();

          emit(CustomerState.loaded(customers: newList));
        });
  }

  void delete(Deletor deletor) {
    state.maybeWhen(
        orElse: () {},
        loaded: (customers) {
          final newList =
              customers.where((customer) => customer.id != deletor.id).toList();
          emit(CustomerState.loaded(customers: newList));
          deletor.shouldDelete.then((value) {
            if (value) {
              //TODO: delete permanantly
            } else {
              emit(CustomerState.loaded(customers: customers));
            }
          });
        });
  }
}
