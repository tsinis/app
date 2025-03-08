import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'core/repository_completer.dart';
import 'core/storage_repository.dart';
import 'router/app_router.dart';
import 'router/initialization_guard.dart';

void main() {
  final repositoryCompleter = RepositoryCompleter();
  final appRouter = AppRouter(InitializationGuard(repositoryCompleter));
  repositoryCompleter.initialize();
  runApp(Main(appRouter, repository: repositoryCompleter.future));
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
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
        useMaterial3: true,
      ),
    ),
  );
}
