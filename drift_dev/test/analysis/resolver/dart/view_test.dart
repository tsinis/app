import 'package:build_test/build_test.dart';
import 'package:drift/drift.dart' show DriftSqlType;
import 'package:drift_dev/src/analysis/results/results.dart';
import 'package:test/test.dart';

import '../../../utils.dart';
import '../../test_utils.dart';

void main() {
  test('can analyze Dart view', () async {
    final backend = await TestBackend.inTest({
      'a|lib/main.dart': '''
import 'package:drift/drift.dart';

class TodoCategories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get content => text().nullable()();
  IntColumn get categoryId => integer().references(TodoCategories, #id)();

  TextColumn get generatedText => text().nullable().generatedAs(
      title + const Constant(' (') + content + const Constant(')'))();
}

abstract class TodoCategoryItemCount extends View {
  TodoItems get todoItems;
  TodoCategories get todoCategories;

  Expression<int> get itemCount => todoItems.id.count();

  @override
  Query as() => select([
        todoCategories.name,
        itemCount,
      ]).from(todoCategories).join([
        innerJoin(todoItems, todoItems.categoryId.equalsExp(todoCategories.id))
      ]);
}

@DriftView(name: 'customViewName')
abstract class TodoItemWithCategoryNameView extends View {
  TodoItems get todoItems;
  TodoCategories get todoCategories;

  Expression<String> get title =>
      todoItems.title +
      const Constant('(') +
      todoCategories.name +
      const Constant(')');

  @override
  Query as() => select([todoItems.id, title]).from(todoItems).join([
        innerJoin(
            todoCategories, todoCategories.id.equalsExp(todoItems.categoryId))
      ]);
}
''',
    });

    final result =
        await backend.driver.fullyAnalyze(Uri.parse('package:a/main.dart'));
    expect(result.allErrors, isEmpty);

    final views =
        result.analysis.values.map((e) => e.result).whereType<DriftView>();
    expect(views, hasLength(2));

    final todoCategoryItemCount = views.singleWhere(
        (e) => e.definingDartClass.toString() == 'TodoCategoryItemCount');
    final todoItemWithCategoryName = views.singleWhere((e) =>
        e.definingDartClass.toString() == 'TodoItemWithCategoryNameView');

    expect(
        todoCategoryItemCount.source,
        isA<DartViewSource>().having(
            (e) => e.dartQuerySource.toString(),
            'dartQuerySource',
            '.join([innerJoin(todoItems,todoItems.categoryId.equalsExp(todoCategories.id))])'));
    expect(
        todoItemWithCategoryName.source,
        isA<DartViewSource>().having(
            (e) => e.dartQuerySource.toString(),
            'dartQuerySource',
            '.join([innerJoin(todoCategories,todoCategories.id.equalsExp(todoItems.categoryId))])'));
    expect(todoCategoryItemCount.columns, hasLength(2));
    expect(
        todoCategoryItemCount.columns[0],
        isA<DriftColumn>()
            .having((e) => e.nameInDart, 'nameInDart', 'name')
            .having((e) => e.nullable, 'nullable', isFalse));
    expect(
        todoCategoryItemCount.columns[1],
        isA<DriftColumn>()
            .having((e) => e.nameInDart, 'nameInDart', 'itemCount')
            .having((e) => e.sqlType.builtin, 'sqlType', DriftSqlType.int)
            .having((e) => e.nullable, 'nullable', isTrue));

    expect(todoItemWithCategoryName.columns, hasLength(2));
    expect(
        todoItemWithCategoryName.columns[0],
        isA<DriftColumn>()
            .having((e) => e.nameInDart, 'nameInDart', 'id')
            .having((e) => e.nullable, 'nullable', isFalse));
    expect(
        todoItemWithCategoryName.columns[1],
        isA<DriftColumn>()
            .having((e) => e.nameInDart, 'nameInDart', 'title')
            .having((e) => e.sqlType.builtin, 'sqlType', DriftSqlType.string)
            .having((e) => e.nullable, 'nullable', isTrue));
  });

  test('generates unique column names for conflicts', () async {
    final backend = await TestBackend.inTest({
      'a|lib/main.dart': '''
import 'package:drift/drift.dart';

class MyTable extends Table {
  IntColumn get id => integer()();
}

class MyView extends View {
  MyTable get a;
  MyTable get b;
  MyTable get c;

  @override
  Query as() => select([
    a.id,
    b.id,
    c.id,
  ]).from(a).join([
    innerJoin(b, b.id.equalsExp(a.id)),
    innerJoin(c, c.id.equalsExp(a.id)),
  ]);
}

@DriftDatabase(tables: [MyTable], views: [MyView])
class Database {}
''',
    });

    final file = await backend.analyze('package:a/main.dart');
    backend.expectNoErrors();

    final view = file.analyzedElements.whereType<DriftView>().single;
    expect(view.columns.map((e) => e.nameInDart), ['id', 'id1', 'id2']);
    expect(view.columns.map((e) => e.nameInSql), ['id', 'id1', 'id2']);
  });

  test('can use groupBy without join', () async {
    final result = await emulateDriftBuild(
      inputs: {
        'a|lib/a.dart': '''
import 'package:drift/drift.dart';

abstract class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

abstract class CommonNames extends View {
  Users get users;

  Expression<int> get amount => users.id.count();

  @override
  Query as() => select([amount]).from(users)
    ..groupBy([users.id], having: users.id.isBiggerThanValue(10));
}
''',
      },
      modularBuild: true,
      logger: loggerThat(neverEmits(anything)),
    );

    checkOutputs({
      'a|lib/a.drift.dart': decodedMatches(contains(r'''
  @override
  i0.Query? get query =>
      (attachedDatabase.selectOnly(users)..addColumns($columns))
        ..groupBy([users.id],
            having: i3.ComparableExpr(users.id).isBiggerThanValue(10));
'''))
    }, result.dartOutputs, result.writer);
  });

  test('can use views referencing same table multiple times', () async {
    await emulateDriftBuild(
      inputs: {
        'a|lib/a.dart': '''
import 'package:drift/drift.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class UsersView extends View {
  Users get a;
  Users get b;

  @override
  Query as() => select([a.id, b.name])
      .from(a)
      .join([
        innerJoin(b, b.name.equalsExp(a.id))
      ]);
}
''',
      },
      logger: loggerThat(neverEmits(anything)),
    );
  });
}
