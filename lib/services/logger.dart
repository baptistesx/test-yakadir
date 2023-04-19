import 'package:flutter/foundation.dart';

class Logger {
  void record({
    required dynamic error,
    required StackTrace stack,
    String? reason,
  }) {
    debugPrintStack(label: error?.toString() ?? 'Exception', stackTrace: stack);
  }
}
