import 'package:equatable/equatable.dart';
import 'package:price_checker/domain/core/value_object/value_object.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  const UniqueId._(String value) : super(value);
  factory UniqueId() {
    return UniqueId._(Uuid().v4());
  }
  factory UniqueId.fromString(String value) {
    return UniqueId._(value);
  }

  @override
  bool get isValid => value.isNotEmpty;
}
