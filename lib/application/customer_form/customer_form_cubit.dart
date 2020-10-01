import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';

part 'customer_form_state.dart';
part 'customer_form_cubit.freezed.dart';

class CustomerFormCubit extends Cubit<CustomerFormState> {
  final CustomerCubit customerCubit;
  CustomerFormCubit({@required this.customerCubit})
      : super(CustomerFormState.initial());

  //events
  void init(Option<Customer> customerOption) {
    customerOption.fold(() {}, (customer) {
      emit(state.copyWith(isEditing: true, customer: customer));
    });
  }

  void nameChanged(String name) {
    final customerName = CustomerName(name);
    emit(state.copyWith(
        showError: true,
        customer: state.customer.copyWith(name: customerName)));
  }

  void save() {
    state.copyWith(isSaving: true);
    if (!state.customer.isValid) {
      emit(state.copyWith(isSaving: false, saveStatus: Some(Left(Error()))));
    } else {
      if (state.isEditing) {
        customerCubit.update(state.customer);
        //todo: do this parmanantly
      } else {
        customerCubit.save(state.customer);
        //todo: do this parmanantly
      }
      emit(state.copyWith(isSaving: false, saveStatus: Some(Right(unit))));
    }
  }
}
