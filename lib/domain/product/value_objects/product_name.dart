import 'package:price_checker/domain/core/value_object/value_object.dart';

class ProductName extends ValueObject<String> {
  const ProductName(String value) : super(value);
  @override
  bool get isValid => value.isNotEmpty;
}
