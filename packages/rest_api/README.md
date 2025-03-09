# REST API Package

## Automatic CLI Tool

Just run `dart run` from package root to generate REST clients and models.

## Manual approach

- Fetch new one or/and put JSON schema file from Swagger/OpenAPI to the [schema](./schema/openapi.json) folder

- Run command below to generate REST clients and data classes

```shell
dart run swagger_parser
```

- Validate outputs and adjust if needed.

- Run code generation with `build_runner` for `retrofit` with command

```shell
dart run build_runner build -d
```

- Run code formatter with command

```shell
dart format .
```

- Clients and models are generated!

- Test serialization and deserialization with unit tests

```shell
flutter test --dart-define=BASE_URL=https://example.com
```

## Features

- REST API clients and models generated from Swagger/OpenAPI schema
- Integration with `retrofit` for HTTP requests
- Support for serialization and deserialization

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  rest_api:
    path: ../packages/rest_api
```

## Usage

### Basic Setup

```dart
import 'package:rest_api/hotels_api.dart';

final client = ClientHttp(Dio(), baseUrl: HotelsApi.baseUrl);
```

### Fetching Data

```dart
final response = await client.getHotels();
final hotels = response.data?.hotels;
```

## Development

Use the provided CLI tool or manual approach to generate REST clients and models.

## Testing

Run unit tests with the following command:

```shell
flutter test --dart-define=BASE_URL=https://example.com
```
