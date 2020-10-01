import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/customer/models/customer.dart';

part 'customer_form_state.dart';
part 'customer_form_cubit.freezed.dart';

class CustomerFormCubit extends Cubit<CustomerFormState> {
  CustomerFormCubit() : super(CustomerFormState.initial());
}
