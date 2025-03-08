// ignore_for_file: require_trailing_commas,prefer-extracting-function-callbacks

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:log/logger.dart';
import 'package:provider/provider.dart';
import 'package:rest_api/hotels_api.dart';

import 'core/repository_completer.dart';
import 'core/storage_repository.dart';
import 'presentation/theme/app_theme.dart';
import 'router/app_router.dart';
import 'router/initialization_guard.dart';

void main() {
  assert(
    HotelsApi.isBaseUrlProvided,
    '`BASE_URL` is not provided, please provide it either with a '
    '`flutter run --dart-define=BASE_URL=https://example.com` command or '
    'by setting it in the environment variables (in `app/.env/secret.env`) and'
    ' run with `flutter run --dart-define-from-file=.env/secret.env` command.',
  );

  final logger = const LoggerConfig().configRootLogger();
  final repositoryCompleter = RepositoryCompleter();
  final appRouter = AppRouter(InitializationGuard(repositoryCompleter));

  runZonedGuarded<void>(() {
    repositoryCompleter.initialize();
    runApp(Main(appRouter, repository: repositoryCompleter.future));
    // ignore: prefer-trailing-comma, new Dart 3.7 formatting.
  }, (error, stack) => logger.severe('Zone Error: $error!', error, stack));

  GoogleFonts.config.allowRuntimeFetching = false;
}

class Main extends StatelessWidget {
  const Main(this._router, {Future<StorageRepository?>? repository, super.key})
    : _repository = repository;

  final Future<StorageRepository?>? _repository;
  final AppRouter _router;

  @override
  Widget build(BuildContext context) => FutureProvider(
    create: (_) => _repository,
    initialData: null,
    lazy: false,
    child: MaterialApp.router(
      routerConfig: _router.config(),
      theme: AppTheme.data,
    ),
  );
}
