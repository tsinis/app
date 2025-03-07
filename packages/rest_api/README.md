# REST API Package

## CLI Tool

Run `dart run :cli` from package root to generate REST clients and models.

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
