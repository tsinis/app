// ignore_for_file: avoid-non-ascii-symbols,prefer-extracting-function-callbacks

import 'dart:developer' as dev;

import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:logging/logging.dart';

final class LoggerConfig {
  const LoggerConfig();

  Logger configRootLogger([Level rootLevel = Level.INFO]) {
    Logger.root.level = rootLevel;
    // ignore: avoid-unassigned-stream-subscriptions, it should listen to logs.
    Logger.root.onRecord.listen((i) {
      !kDebugMode // ignore: avoid-negated-conditions, for readability.
          // ignore: avoid_print, format-comment, logger catches those prints.
          ? print('${i.level}: ${i.time}: ${i.message}') // coverage:ignore-line
          : _debugLog(i);
    });

    return Logger.root;
  }

  static void _debugLog(LogRecord record) {
    final date = record.time;
    final minute = date.minute.toString().padLeft(2, '0');
    final loggerName = record.loggerName.isEmpty ? 'Root' : record.loggerName;
    final time = '${date.hour}:$minute:${date.second}.${date.millisecond}';
    final message = '$time in [$loggerName]: ${record.message} ';

    switch (record.level) {
      case Level.FINE:
      case Level.FINER:
      case Level.FINEST:
        dev.log('🤔 $message');

      case Level.SEVERE:
      case Level.SHOUT:
        dev.log('⛔ $message');

      case Level.WARNING:
        dev.log('🚧 $message');

      case Level.CONFIG:
        dev.log('📝 $message');

      default:
        dev.log('🆗 $message');
    }
  }
}
