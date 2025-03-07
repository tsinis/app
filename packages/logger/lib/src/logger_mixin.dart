import 'package:flutter/foundation.dart' show AsyncValueGetter, protected;
import 'package:logging/logging.dart';

mixin LoggerMixin {
  Logger get _logger => Logger(super.runtimeType.toString());

  @protected
  void info(String message) => log(Level.INFO, message);

  @protected
  // ignore: prefer-named-parameters, just a helper mixin.
  void log(Level level, String message, [Object? error, StackTrace? stack]) =>
      _logger.log(level, message, error, stack);

  @protected
  Future<T?> tryOrLog<T extends Object>(
    AsyncValueGetter<T> future,
    String message,
  ) async {
    info('Ready to $message...');

    try {
      final result = await future();
      info('Attempt to $message was successful!');

      return result;
    } catch (error, stackTrace) {
      _logger.severe('Failed to $message!', error, stackTrace);

      return null;
    }
  }
}
