part of 'customer_form_cubit.dart';

@freezed
abstract class CustomerFormState with _$CustomerFormState {
  const factory CustomerFormState({
    @required bool isEditing,
    @required bool isSaving,
    @required Customer customer,
    @required Option<Either<Error, Unit>> saveStatus,
    @required bool showError,
  }) = _CustomerFormState;

  factory CustomerFormState.initial() {
    return CustomerFormState(
        isEditing: false,
        isSaving: false,
        showError: false,
        saveStatus: None(),
        customer: Customer.empty());
  }
}
