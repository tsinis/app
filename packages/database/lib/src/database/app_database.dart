import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rest_api/hotels_api.dart';

import '../converters/best_offer_converter.dart';
import '../converters/list_api_image_converter.dart';
import '../converters/rating_info_converter.dart';
import '../dao/hotel_dao.dart';
import '../table/hotel_table.dart';

// Generated by drift_dev when running `build_runner build`.
part 'app_database.g.dart';

@DriftDatabase(tables: [HotelTable], daos: [HotelDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  static final webExecutor = driftDatabase(
    name: _name,
    web: DriftWebOptions(
      driftWorker: Uri.parse('drift_worker.js'),
      onResult: (result) {
        if (result.missingFeatures.isNotEmpty) {
          debugPrint(
            'Using ${result.chosenImplementation} due to unsupported '
            'browser features: ${result.missingFeatures}',
          );
        }
      },
      sqlite3Wasm: Uri.parse('sqlite3.wasm'),
    ),
  );
  static const _name = 'db.sqlite';

  static Future<AppDatabase> open([Directory? directory]) async {
    if (kIsWeb) return AppDatabase(webExecutor);

    final supportDir = directory ?? await getApplicationSupportDirectory();
    final executor = driftDatabase(
      name: 'sqlite.db',
      native: DriftNativeOptions(databaseDirectory: () async => supportDir),
    );

    return AppDatabase(executor);
  }

  @override
  int get schemaVersion => 1;
}
