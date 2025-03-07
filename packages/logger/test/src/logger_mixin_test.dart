// ignore_for_file: invalid_use_of_protected_member, it's a unit test.

import 'package:log/src/logger_mixin.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

class _LoggerMixinTest with LoggerMixin {}

void main() => group('$LoggerMixin', () {
  late _LoggerMixinTest logger;
  final logs = <LogRecord>[];

  setUp(() {
    logs.clear();
    Logger.root.level = Level.ALL;
    // ignore: avoid-unassigned-stream-subscriptions, it's a test.
    Logger.root.onRecord.listen(logs.add);
    logger = _LoggerMixinTest();
  });

  tearDown(Logger.root.clearListeners);

  test('info() logs message with INFO level', () {
    const testMessage = 'test info message';
    logger.info(testMessage);

    expect(logs, hasLength(1));
    expect(logs.singleOrNull?.level, equals(Level.INFO));
    expect(logs.singleOrNull?.message, equals(testMessage));
    expect(logs.singleOrNull?.loggerName, equals('_LoggerMixinTest'));
  });

  test('log() correctly logs with custom level', () {
    const testMessage = 'test warning message';
    final error = Exception('Test error');
    final stackTrace = StackTrace.current;
    logger.log(Level.WARNING, testMessage, error, stackTrace);

    expect(logs, hasLength(1));
    expect(logs.singleOrNull?.level, equals(Level.WARNING));
    expect(logs.singleOrNull?.message, equals(testMessage));
    expect(logs.singleOrNull?.error, equals(error));
    expect(logs.singleOrNull?.stackTrace, equals(stackTrace));
  });

  group('tryOrLog()', () {
    test('returns value and logs info on success', () async {
      const returnValue = 'success';
      const message = 'do something';
      final result = await logger.tryOrLog(() async => returnValue, message);

      expect(logs, hasLength(2));
      expect(result, equals(returnValue));
      expect(logs.firstOrNull?.level, equals(Level.INFO));
      expect(logs.firstOrNull?.message, equals('Ready to $message...'));
      expect(logs.lastOrNull?.level, equals(Level.INFO));
      expect(
        logs.lastOrNull?.message,
        equals('Attempt to $message was successful!'),
      );
    });

    test('returns null and logs error on exception', () async {
      const message = 'do something';
      final error = Exception('Test error');
      final result = await logger.tryOrLog(() async => throw error, message);

      expect(result, isNull);
      expect(logs, hasLength(2));
      expect(logs.firstOrNull?.level, equals(Level.INFO));
      expect(logs.firstOrNull?.message, equals('Ready to $message...'));
      expect(logs.lastOrNull?.level, equals(Level.SEVERE));
      expect(logs.lastOrNull?.message, equals('Failed to $message!'));
      expect(logs.lastOrNull?.error, equals(error));
      expect(logs.lastOrNull?.stackTrace, isNotNull);
    });
  });
});
