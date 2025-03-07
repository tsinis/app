import 'package:log/logger.dart';
import 'package:test/test.dart';

void main() => group('$LoggerConfig', () {
  final logger = Logger('Unit Test');

  test('configRootLogger()', () {
    expect(const LoggerConfig().configRootLogger(), Logger.root);
    logger
      ..fine(Level.FINE)
      ..config(Level.CONFIG)
      ..info(Level.INFO)
      ..warning(Level.WARNING)
      ..severe(Level.SEVERE);
  });
});
