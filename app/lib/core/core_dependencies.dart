import 'package:database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/hotels_api.dart';

@immutable
class CoreDependencies {
  @visibleForTesting
  const CoreDependencies(this.database, this.restClient);

  static Future<CoreDependencies> init(
    AsyncValueGetter<AppDatabase> onDatabase,
    ClientHttp restClient,
  ) async => CoreDependencies(await onDatabase(), restClient);

  final AppDatabase database;
  final ClientHttp restClient;
}
