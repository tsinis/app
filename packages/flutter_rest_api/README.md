- Put your JSON schema file from Swagger/OpenAPI to the [schema](./schema/openapi.json) folder

- Run command below to generate REST clients and data classes

```shell
dart run swagger_parser
```

- Validate outputs and adjust if needed

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
dart run test
```

- Make a real request on real endpoint (replace `https://example.com` with real URL)

```shell
dart run --define=BASE_URL=https://example.com bin/flutter_rest_api.dart
```
