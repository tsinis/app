import 'package:flutter/foundation.dart' show AsyncValueGetter, protected;
import 'package:logging/logging.dart';

mixin LoggerMixin {
  @protected
  Logger get log => Logger(super.runtimeType.toString());

  @protected
  Future<T?> tryOrLog<T extends Object>(
    AsyncValueGetter<T> future,
    String message, {
    T? orElse,
  }) async {
    log.info('Ready to $message...');

    try {
      final result = await future();
      log.info('Attempt to $message was successful!');

      return result;
    } catch (error, stackTrace) {
      log.severe('Failed to $message!', error, stackTrace);

      return orElse;
    }
  }
}
