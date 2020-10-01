import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/customer/models/customer.dart';

part 'customer_state.dart';
part 'customer_cubit.freezed.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit() : super(_Initial());

  //events
  void init() {
    //Todo: get all customers
    emit(CustomerState.loaded(customers: []));
  }
}
