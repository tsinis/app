import 'package:database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/hotels_api.dart';

/// A class that holds the core dependencies for the app.
///
/// This class is immutable and contains the database and REST client.
@immutable
class CoreDependencies {
  /// Creates an instance of [CoreDependencies].
  @visibleForTesting
  const CoreDependencies(this.database, this.restClient);

  /// Initializes the core dependencies.
  ///
  /// This method takes an [AsyncValueGetter] for the database and a
  /// [ClientHttp] for the REST client.
  static Future<CoreDependencies> init(
    AsyncValueGetter<AppDatabase> onDatabase,
    ClientHttp restClient,
  ) async => CoreDependencies(await onDatabase(), restClient);

  /// The database instance.
  final AppDatabase database;

  /// The REST client instance.
  final ClientHttp restClient;
}
