# Logger Package

A simple yet powerful logging utility for Flutter applications.

## Features

- Easy-to-use logging interface
- Integration with Dart's standard `logging` package
- `LoggerMixin` for convenient logging in any class
- Configurable log levels
- Error handling utilities

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  log:
    path: ../packages/logger
```

## Usage

### Basic Logging

```dart
import 'package:log/logger.dart';

void main() {
  // Configure the logger.
  final logger = const LoggerConfig().configRootLogger();

  // Log messages at different levels.
  logger.info('Application started');
  logger.warning('Resource usage is high');
  logger.severe('Critical error occurred', Exception('Database connection failed'));
}
```

### Error Handling

The `tryOrLog` method allows for convenient error handling while automatically logging both attempts and failures:

```dart
import 'package:log/logger.dart';

class MyService with LoggerMixin {
  Future<void> performOperation() async {
    final result = await tryOrLog(
      () async => await doSomethingRisky(),
      'perform critical operation',
    );
  }
}

// Returns null on error, logs both the attempt and any exceptions.
```
