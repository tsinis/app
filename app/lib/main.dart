// ignore_for_file: require_trailing_commas,prefer-extracting-function-callbacks

import 'dart:async';

import 'package:database/database.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:log/logger.dart';
import 'package:provider/provider.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import 'core/core_dependencies.dart';
import 'core/dependencies_completer.dart';
import 'presentation/theme/app_theme.dart';
import 'router/app_router.dart';
import 'router/initialization_guard.dart';

void main() {
  assert(
    HotelsApi.isBaseUrlProvided || kIsWeb,
    '`BASE_URL` is not provided, please provide it either with a '
    '`flutter run --dart-define=BASE_URL=https://example.com` command or '
    'by setting it in the environment variables (in `app/.env/secret.env`) and'
    ' run with `flutter run --dart-define-from-file=.env/secret.env` command.',
  );

  final logger = const LoggerConfig().configRootLogger();
  final dio = FunctionalPlatform.maybeWhen(
    orElse: Dio.new,
    web: () => AdaptedDio().dio, // Due to CORS.
  );
  final client = ClientHttp(dio, baseUrl: HotelsApi.baseUrl);
  final depsCompleter = DependenciesCompleter(
    initializer: () async => CoreDependencies.init(AppDatabase.open, client),
  );

  runZonedGuarded<void>(() {
    depsCompleter.initialize();
    runApp(
      FutureProvider.value(
        initialData: null,
        value: depsCompleter.future,
        child: Main(AppRouter(InitializationGuard(depsCompleter))),
      ),
    );
    // ignore: prefer-trailing-comma, new Dart 3.7 formatting.
  }, (error, stack) => logger.severe('Zone Error: $error!', error, stack));
}

class Main extends StatelessWidget {
  const Main(this._router, {super.key});
  final AppRouter _router;

  @override
  Widget build(BuildContext context) =>
      MaterialApp.router(routerConfig: _router.config(), theme: AppTheme.data);
}
