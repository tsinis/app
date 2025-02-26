// ignore_for_file: unused_element
// #docregion flutter,sqlite3,postgres,before_generation
import 'package:drift/drift.dart';
// #enddocregion flutter,sqlite3,postgres,before_generation

// #docregion flutter
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
// #enddocregion flutter
// #docregion sqlite3
import 'dart:io';
import 'package:drift/native.dart';
// #enddocregion sqlite3
// #docregion postgres
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart' as pg;
// #enddocregion postgres

// #docregion flutter,sqlite3,postgres,before_generation

part 'database.g.dart';

// #docregion table
class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

// #enddocregion table
@DriftDatabase(tables: [TodoItems])
class AppDatabase extends _$AppDatabase {
// #enddocregion before_generation
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  // #enddocregion flutter,sqlite3,postgres
  static QueryExecutor _openConnection() {
    throw 'should not show as snippet';
  }

// #docregion before_generation
}
// #enddocregion before_generation

class OpenFlutter {
// #docregion flutter
  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }
}
// #enddocregion flutter

class OpenPostgres {
// #docregion postgres
  static QueryExecutor _openConnection() {
    return PgDatabase(
      endpoint: pg.Endpoint(
        host: 'localhost',
        database: 'database',
        username: 'dart',
        password: 'mysecurepassword',
      ),
    );
  }
}
// #enddocregion postgres

class OpenSqlite3 {
// #docregion sqlite3
  static QueryExecutor _openConnection() {
    return NativeDatabase.createInBackground(File('path/to/your/database'));
  }
}
// #enddocregion sqlite3

class WidgetsFlutterBinding {
  static void ensureInitialized() {}
}

// #docregion use
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();

  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(
        title: 'todo: finish drift setup',
        content: 'We can now write queries and define our own tables.',
      ));
  List<TodoItem> allItems = await database.select(database.todoItems).get();

  print('items in database: $allItems');
}
// #enddocregion use
