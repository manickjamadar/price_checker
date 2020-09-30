import 'package:price_checker/domain/core/value_object/value_object.dart';

class ProductPrice extends ValueObject<num> {
  const ProductPrice(num value) : super(value);

  @override
  bool get isValid => value >= 0;
}
