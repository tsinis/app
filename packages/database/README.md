# Database Package

A simple yet powerful Drift database for Flutter applications.

## Features

- Local persistence using Drift
- Type converters for custom data types
- Integration with other packages like `rest_api` and `logger`

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  database:
    path: ../packages/database
```

## Usage

### Basic Setup

```dart
import 'package:database/database.dart';

final database = AppDatabase();
```

### Type Converters

This package includes type converters for custom data types, such as `ListApiImageConverter` for handling lists of `ApiImage` objects.

```dart
import 'package:database/src/converters/list_api_image_converter.dart';

final converter = ListApiImageConverter();
```

## Development

As this package uses Drift, it depends on code-generation. Use `dart run build_runner build -d` to automatically build the generated code.

## Testing

Run unit tests with the following command:

```shell
flutter test
```
