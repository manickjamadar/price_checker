import 'package:price_checker/domain/core/value_object/value_object.dart';

class CustomerName extends ValueObject<String> {
  const CustomerName(String value) : super(value);

  @override
  bool get isValid => value != null && value.isNotEmpty;
}
