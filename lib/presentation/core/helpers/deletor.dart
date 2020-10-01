import 'dart:async';

import 'package:price_checker/domain/core/unique_id.dart';

class Deletor {
  final UniqueId id;
  Completer<bool> _completer;

  Deletor(this.id) {
    _completer = Completer<bool>();
  }

  Future<bool> get shouldDelete => _completer.future;

  bool get canPerform => !_completer.isCompleted;

  void delete() {
    if (canPerform) {
      _completer.complete(true);
    }
  }

  void undo() {
    if (canPerform) {
      _completer.complete(false);
    }
  }
}
