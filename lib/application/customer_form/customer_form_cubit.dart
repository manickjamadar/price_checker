import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/application/customer/customer_cubit.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/active_product/value_objects/product_price.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';

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

  void productAdded(Product product, int price) {
    final productPrice = ProductPrice(price);
    final activeProduct =
        ActiveProduct(id: UniqueId(), price: productPrice, product: product);
    if (!activeProduct.isValid) {
      return;
    }
    final newProductList = [...state.customer.activeProducts, activeProduct];
    emit(state.copyWith(
        showError: true,
        customer: state.customer.copyWith(activeProducts: newProductList)));
  }

  void priceUpdated(UniqueId id, int price) {
    final newProductList = state.customer.activeProducts.map((ap) {
      if (ap.id == id) {
        final productPrice = ProductPrice(price);
        final newAp = ap.copyWith(price: productPrice);
        if (newAp.isValid) {
          return newAp;
        }
      }
      return ap;
    }).toList();
    emit(state.copyWith(
        showError: true,
        customer: state.customer.copyWith(activeProducts: newProductList)));
  }

  void productCleared(UniqueId id) {
    final newProductList =
        state.customer.activeProducts.where((ap) => ap.id != id).toList();
    emit(state.copyWith(
        showError: true,
        customer: state.customer.copyWith(activeProducts: newProductList)));
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
