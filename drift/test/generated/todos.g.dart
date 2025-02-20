// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// ignore_for_file: type=lint
class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<RowId, int> id = GeneratedColumn<
              int>('id', aliasedName, false,
          hasAutoIncrement: true,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultConstraints:
              GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'))
      .withConverter<RowId>($CategoriesTable.$converterid);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'desc', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL UNIQUE');
  @override
  late final GeneratedColumnWithTypeConverter<CategoryPriority, int> priority =
      GeneratedColumn<int>('priority', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultValue: const Constant(0))
          .withConverter<CategoryPriority>($CategoriesTable.$converterpriority);
  static const VerificationMeta _descriptionInUpperCaseMeta =
      const VerificationMeta('descriptionInUpperCase');
  @override
  late final GeneratedColumn<String> descriptionInUpperCase =
      GeneratedColumn<String>('description_in_upper_case', aliasedName, false,
          generatedAs: GeneratedAs(
              StringExpressionOperators(description).upper(), false),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, description, priority, descriptionInUpperCase];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('desc')) {
      context.handle(_descriptionMeta,
          description.isAcceptableOrUnknown(data['desc']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('description_in_upper_case')) {
      context.handle(
          _descriptionInUpperCaseMeta,
          descriptionInUpperCase.isAcceptableOrUnknown(
              data['description_in_upper_case']!, _descriptionInUpperCaseMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: $CategoriesTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}desc'])!,
      priority: $CategoriesTable.$converterpriority.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}priority'])!),
      descriptionInUpperCase: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}description_in_upper_case'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RowId, int, int> $converterid =
      TypeConverter.extensionType<RowId, int>();
  static JsonTypeConverter2<CategoryPriority, int, int> $converterpriority =
      const EnumIndexConverter<CategoryPriority>(CategoryPriority.values);
}

class Category extends DataClass implements Insertable<Category> {
  final RowId id;
  final String description;
  final CategoryPriority priority;
  final String descriptionInUpperCase;
  const Category(
      {required this.id,
      required this.description,
      required this.priority,
      required this.descriptionInUpperCase});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['id'] = Variable<int>($CategoriesTable.$converterid.toSql(id));
    }
    map['desc'] = Variable<String>(description);
    {
      map['priority'] =
          Variable<int>($CategoriesTable.$converterpriority.toSql(priority));
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      description: Value(description),
      priority: Value(priority),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: $CategoriesTable.$converterid
          .fromJson(serializer.fromJson<int>(json['id'])),
      description: serializer.fromJson<String>(json['description']),
      priority: $CategoriesTable.$converterpriority
          .fromJson(serializer.fromJson<int>(json['priority'])),
      descriptionInUpperCase:
          serializer.fromJson<String>(json['descriptionInUpperCase']),
    );
  }
  factory Category.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      Category.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>($CategoriesTable.$converterid.toJson(id)),
      'description': serializer.toJson<String>(description),
      'priority': serializer
          .toJson<int>($CategoriesTable.$converterpriority.toJson(priority)),
      'descriptionInUpperCase':
          serializer.toJson<String>(descriptionInUpperCase),
    };
  }

  Category copyWith(
          {RowId? id,
          String? description,
          CategoryPriority? priority,
          String? descriptionInUpperCase}) =>
      Category(
        id: id ?? this.id,
        description: description ?? this.description,
        priority: priority ?? this.priority,
        descriptionInUpperCase:
            descriptionInUpperCase ?? this.descriptionInUpperCase,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('priority: $priority, ')
          ..write('descriptionInUpperCase: $descriptionInUpperCase')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, description, priority, descriptionInUpperCase);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.description == this.description &&
          other.priority == this.priority &&
          other.descriptionInUpperCase == this.descriptionInUpperCase);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<RowId> id;
  final Value<String> description;
  final Value<CategoryPriority> priority;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.priority = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String description,
    this.priority = const Value.absent(),
  }) : description = Value(description);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<int>? priority,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'desc': description,
      if (priority != null) 'priority': priority,
    });
  }

  CategoriesCompanion copyWith(
      {Value<RowId>? id,
      Value<String>? description,
      Value<CategoryPriority>? priority}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      priority: priority ?? this.priority,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>($CategoriesTable.$converterid.toSql(id.value));
    }
    if (description.present) {
      map['desc'] = Variable<String>(description.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(
          $CategoriesTable.$converterpriority.toSql(priority.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('priority: $priority')
          ..write(')'))
        .toString();
  }
}

class $TodosTableTable extends TodosTable
    with TableInfo<$TodosTableTable, TodoEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTableTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<RowId, int> id = GeneratedColumn<
              int>('id', aliasedName, false,
          hasAutoIncrement: true,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultConstraints:
              GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'))
      .withConverter<RowId>($TodosTableTable.$converterid);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 16),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _targetDateMeta =
      const VerificationMeta('targetDate');
  @override
  late final GeneratedColumn<DateTime> targetDate = GeneratedColumn<DateTime>(
      'target_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  late final GeneratedColumnWithTypeConverter<RowId?, int> category =
      GeneratedColumn<int>('category', aliasedName, true,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: GeneratedColumn.constraintIsAlways(
                  'REFERENCES categories (id) DEFERRABLE INITIALLY DEFERRED'))
          .withConverter<RowId?>($TodosTableTable.$convertercategoryn);
  @override
  late final GeneratedColumnWithTypeConverter<TodoStatus?, String> status =
      GeneratedColumn<String>('status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<TodoStatus?>($TodosTableTable.$converterstatusn);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, targetDate, category, status];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<TodoEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('target_date')) {
      context.handle(
          _targetDateMeta,
          targetDate.isAcceptableOrUnknown(
              data['target_date']!, _targetDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {title, category},
        {title, targetDate},
      ];
  @override
  TodoEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoEntry(
      id: $TodosTableTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      targetDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}target_date']),
      category: $TodosTableTable.$convertercategoryn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])),
      status: $TodosTableTable.$converterstatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])),
    );
  }

  @override
  $TodosTableTable createAlias(String alias) {
    return $TodosTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RowId, int, int> $converterid =
      TypeConverter.extensionType<RowId, int>();
  static JsonTypeConverter2<RowId, int, int> $convertercategory =
      TypeConverter.extensionType<RowId, int>();
  static JsonTypeConverter2<RowId?, int?, int?> $convertercategoryn =
      JsonTypeConverter2.asNullable($convertercategory);
  static JsonTypeConverter2<TodoStatus, String, String> $converterstatus =
      const EnumNameConverter<TodoStatus>(TodoStatus.values);
  static JsonTypeConverter2<TodoStatus?, String?, String?> $converterstatusn =
      JsonTypeConverter2.asNullable($converterstatus);
}

class TodoEntry extends DataClass implements Insertable<TodoEntry> {
  final RowId id;
  final String? title;
  final String content;
  final DateTime? targetDate;
  final RowId? category;
  final TodoStatus? status;
  const TodoEntry(
      {required this.id,
      this.title,
      required this.content,
      this.targetDate,
      this.category,
      this.status});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['id'] = Variable<int>($TodosTableTable.$converterid.toSql(id));
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['content'] = Variable<String>(content);
    if (!nullToAbsent || targetDate != null) {
      map['target_date'] = Variable<DateTime>(targetDate);
    }
    if (!nullToAbsent || category != null) {
      map['category'] =
          Variable<int>($TodosTableTable.$convertercategoryn.toSql(category));
    }
    if (!nullToAbsent || status != null) {
      map['status'] =
          Variable<String>($TodosTableTable.$converterstatusn.toSql(status));
    }
    return map;
  }

  TodosTableCompanion toCompanion(bool nullToAbsent) {
    return TodosTableCompanion(
      id: Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      content: Value(content),
      targetDate: targetDate == null && nullToAbsent
          ? const Value.absent()
          : Value(targetDate),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
    );
  }

  factory TodoEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoEntry(
      id: $TodosTableTable.$converterid
          .fromJson(serializer.fromJson<int>(json['id'])),
      title: serializer.fromJson<String?>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      targetDate: serializer.fromJson<DateTime?>(json['target_date']),
      category: $TodosTableTable.$convertercategoryn
          .fromJson(serializer.fromJson<int?>(json['category'])),
      status: $TodosTableTable.$converterstatusn
          .fromJson(serializer.fromJson<String?>(json['status'])),
    );
  }
  factory TodoEntry.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoEntry.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>($TodosTableTable.$converterid.toJson(id)),
      'title': serializer.toJson<String?>(title),
      'content': serializer.toJson<String>(content),
      'target_date': serializer.toJson<DateTime?>(targetDate),
      'category': serializer
          .toJson<int?>($TodosTableTable.$convertercategoryn.toJson(category)),
      'status': serializer
          .toJson<String?>($TodosTableTable.$converterstatusn.toJson(status)),
    };
  }

  TodoEntry copyWith(
          {RowId? id,
          Value<String?> title = const Value.absent(),
          String? content,
          Value<DateTime?> targetDate = const Value.absent(),
          Value<RowId?> category = const Value.absent(),
          Value<TodoStatus?> status = const Value.absent()}) =>
      TodoEntry(
        id: id ?? this.id,
        title: title.present ? title.value : this.title,
        content: content ?? this.content,
        targetDate: targetDate.present ? targetDate.value : this.targetDate,
        category: category.present ? category.value : this.category,
        status: status.present ? status.value : this.status,
      );
  TodoEntry copyWithCompanion(TodosTableCompanion data) {
    return TodoEntry(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      targetDate:
          data.targetDate.present ? data.targetDate.value : this.targetDate,
      category: data.category.present ? data.category.value : this.category,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodoEntry(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('targetDate: $targetDate, ')
          ..write('category: $category, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, targetDate, category, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoEntry &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.targetDate == this.targetDate &&
          other.category == this.category &&
          other.status == this.status);
}

class TodosTableCompanion extends UpdateCompanion<TodoEntry> {
  final Value<RowId> id;
  final Value<String?> title;
  final Value<String> content;
  final Value<DateTime?> targetDate;
  final Value<RowId?> category;
  final Value<TodoStatus?> status;
  const TodosTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.targetDate = const Value.absent(),
    this.category = const Value.absent(),
    this.status = const Value.absent(),
  });
  TodosTableCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    required String content,
    this.targetDate = const Value.absent(),
    this.category = const Value.absent(),
    this.status = const Value.absent(),
  }) : content = Value(content);
  static Insertable<TodoEntry> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? targetDate,
    Expression<int>? category,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (targetDate != null) 'target_date': targetDate,
      if (category != null) 'category': category,
      if (status != null) 'status': status,
    });
  }

  TodosTableCompanion copyWith(
      {Value<RowId>? id,
      Value<String?>? title,
      Value<String>? content,
      Value<DateTime?>? targetDate,
      Value<RowId?>? category,
      Value<TodoStatus?>? status}) {
    return TodosTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      targetDate: targetDate ?? this.targetDate,
      category: category ?? this.category,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>($TodosTableTable.$converterid.toSql(id.value));
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (targetDate.present) {
      map['target_date'] = Variable<DateTime>(targetDate.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(
          $TodosTableTable.$convertercategoryn.toSql(category.value));
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $TodosTableTable.$converterstatusn.toSql(status.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('targetDate: $targetDate, ')
          ..write('category: $category, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<RowId, int> id = GeneratedColumn<
              int>('id', aliasedName, false,
          hasAutoIncrement: true,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultConstraints:
              GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'))
      .withConverter<RowId>($UsersTable.$converterid);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _isAwesomeMeta =
      const VerificationMeta('isAwesome');
  @override
  late final GeneratedColumn<bool> isAwesome = GeneratedColumn<bool>(
      'is_awesome', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_awesome" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _profilePictureMeta =
      const VerificationMeta('profilePicture');
  @override
  late final GeneratedColumn<Uint8List> profilePicture =
      GeneratedColumn<Uint8List>('profile_picture', aliasedName, false,
          type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  @override
  late final GeneratedColumn<DateTime> creationTime = GeneratedColumn<DateTime>(
      'creation_time', aliasedName, false,
      check: () => ComparableExpr(creationTime)
          .isBiggerThan(Constant(DateTime.utc(1950))),
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, isAwesome, profilePicture, creationTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_awesome')) {
      context.handle(_isAwesomeMeta,
          isAwesome.isAcceptableOrUnknown(data['is_awesome']!, _isAwesomeMeta));
    }
    if (data.containsKey('profile_picture')) {
      context.handle(
          _profilePictureMeta,
          profilePicture.isAcceptableOrUnknown(
              data['profile_picture']!, _profilePictureMeta));
    } else if (isInserting) {
      context.missing(_profilePictureMeta);
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time']!, _creationTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: $UsersTable.$converterid.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      isAwesome: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_awesome'])!,
      profilePicture: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}profile_picture'])!,
      creationTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}creation_time'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RowId, int, int> $converterid =
      TypeConverter.extensionType<RowId, int>();
}

class User extends DataClass implements Insertable<User> {
  final RowId id;
  final String name;
  final bool isAwesome;
  final Uint8List profilePicture;
  final DateTime creationTime;
  const User(
      {required this.id,
      required this.name,
      required this.isAwesome,
      required this.profilePicture,
      required this.creationTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['id'] = Variable<int>($UsersTable.$converterid.toSql(id));
    }
    map['name'] = Variable<String>(name);
    map['is_awesome'] = Variable<bool>(isAwesome);
    map['profile_picture'] = Variable<Uint8List>(profilePicture);
    map['creation_time'] = Variable<DateTime>(creationTime);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      name: Value(name),
      isAwesome: Value(isAwesome),
      profilePicture: Value(profilePicture),
      creationTime: Value(creationTime),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: $UsersTable.$converterid
          .fromJson(serializer.fromJson<int>(json['id'])),
      name: serializer.fromJson<String>(json['name']),
      isAwesome: serializer.fromJson<bool>(json['isAwesome']),
      profilePicture: serializer.fromJson<Uint8List>(json['profilePicture']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
    );
  }
  factory User.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      User.fromJson(DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>($UsersTable.$converterid.toJson(id)),
      'name': serializer.toJson<String>(name),
      'isAwesome': serializer.toJson<bool>(isAwesome),
      'profilePicture': serializer.toJson<Uint8List>(profilePicture),
      'creationTime': serializer.toJson<DateTime>(creationTime),
    };
  }

  User copyWith(
          {RowId? id,
          String? name,
          bool? isAwesome,
          Uint8List? profilePicture,
          DateTime? creationTime}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        isAwesome: isAwesome ?? this.isAwesome,
        profilePicture: profilePicture ?? this.profilePicture,
        creationTime: creationTime ?? this.creationTime,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      isAwesome: data.isAwesome.present ? data.isAwesome.value : this.isAwesome,
      profilePicture: data.profilePicture.present
          ? data.profilePicture.value
          : this.profilePicture,
      creationTime: data.creationTime.present
          ? data.creationTime.value
          : this.creationTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isAwesome: $isAwesome, ')
          ..write('profilePicture: $profilePicture, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, isAwesome,
      $driftBlobEquality.hash(profilePicture), creationTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.isAwesome == this.isAwesome &&
          $driftBlobEquality.equals(
              other.profilePicture, this.profilePicture) &&
          other.creationTime == this.creationTime);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<RowId> id;
  final Value<String> name;
  final Value<bool> isAwesome;
  final Value<Uint8List> profilePicture;
  final Value<DateTime> creationTime;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isAwesome = const Value.absent(),
    this.profilePicture = const Value.absent(),
    this.creationTime = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.isAwesome = const Value.absent(),
    required Uint8List profilePicture,
    this.creationTime = const Value.absent(),
  })  : name = Value(name),
        profilePicture = Value(profilePicture);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<bool>? isAwesome,
    Expression<Uint8List>? profilePicture,
    Expression<DateTime>? creationTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (isAwesome != null) 'is_awesome': isAwesome,
      if (profilePicture != null) 'profile_picture': profilePicture,
      if (creationTime != null) 'creation_time': creationTime,
    });
  }

  UsersCompanion copyWith(
      {Value<RowId>? id,
      Value<String>? name,
      Value<bool>? isAwesome,
      Value<Uint8List>? profilePicture,
      Value<DateTime>? creationTime}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      isAwesome: isAwesome ?? this.isAwesome,
      profilePicture: profilePicture ?? this.profilePicture,
      creationTime: creationTime ?? this.creationTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>($UsersTable.$converterid.toSql(id.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isAwesome.present) {
      map['is_awesome'] = Variable<bool>(isAwesome.value);
    }
    if (profilePicture.present) {
      map['profile_picture'] = Variable<Uint8List>(profilePicture.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isAwesome: $isAwesome, ')
          ..write('profilePicture: $profilePicture, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }
}

class $SharedTodosTable extends SharedTodos
    with TableInfo<$SharedTodosTable, SharedTodo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SharedTodosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _todoMeta = const VerificationMeta('todo');
  @override
  late final GeneratedColumn<int> todo = GeneratedColumn<int>(
      'todo', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<int> user = GeneratedColumn<int>(
      'user', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [todo, user];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shared_todos';
  @override
  VerificationContext validateIntegrity(Insertable<SharedTodo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('todo')) {
      context.handle(
          _todoMeta, todo.isAcceptableOrUnknown(data['todo']!, _todoMeta));
    } else if (isInserting) {
      context.missing(_todoMeta);
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    } else if (isInserting) {
      context.missing(_userMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {todo, user};
  @override
  SharedTodo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SharedTodo(
      todo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}todo'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user'])!,
    );
  }

  @override
  $SharedTodosTable createAlias(String alias) {
    return $SharedTodosTable(attachedDatabase, alias);
  }
}

class SharedTodo extends DataClass implements Insertable<SharedTodo> {
  final int todo;
  final int user;
  const SharedTodo({required this.todo, required this.user});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['todo'] = Variable<int>(todo);
    map['user'] = Variable<int>(user);
    return map;
  }

  SharedTodosCompanion toCompanion(bool nullToAbsent) {
    return SharedTodosCompanion(
      todo: Value(todo),
      user: Value(user),
    );
  }

  factory SharedTodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SharedTodo(
      todo: serializer.fromJson<int>(json['todo']),
      user: serializer.fromJson<int>(json['user']),
    );
  }
  factory SharedTodo.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      SharedTodo.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'todo': serializer.toJson<int>(todo),
      'user': serializer.toJson<int>(user),
    };
  }

  SharedTodo copyWith({int? todo, int? user}) => SharedTodo(
        todo: todo ?? this.todo,
        user: user ?? this.user,
      );
  SharedTodo copyWithCompanion(SharedTodosCompanion data) {
    return SharedTodo(
      todo: data.todo.present ? data.todo.value : this.todo,
      user: data.user.present ? data.user.value : this.user,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SharedTodo(')
          ..write('todo: $todo, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(todo, user);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SharedTodo &&
          other.todo == this.todo &&
          other.user == this.user);
}

class SharedTodosCompanion extends UpdateCompanion<SharedTodo> {
  final Value<int> todo;
  final Value<int> user;
  final Value<int> rowid;
  const SharedTodosCompanion({
    this.todo = const Value.absent(),
    this.user = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SharedTodosCompanion.insert({
    required int todo,
    required int user,
    this.rowid = const Value.absent(),
  })  : todo = Value(todo),
        user = Value(user);
  static Insertable<SharedTodo> custom({
    Expression<int>? todo,
    Expression<int>? user,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (todo != null) 'todo': todo,
      if (user != null) 'user': user,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SharedTodosCompanion copyWith(
      {Value<int>? todo, Value<int>? user, Value<int>? rowid}) {
    return SharedTodosCompanion(
      todo: todo ?? this.todo,
      user: user ?? this.user,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (todo.present) {
      map['todo'] = Variable<int>(todo.value);
    }
    if (user.present) {
      map['user'] = Variable<int>(user.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SharedTodosCompanion(')
          ..write('todo: $todo, ')
          ..write('user: $user, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TableWithoutPKTable extends TableWithoutPK
    with TableInfo<$TableWithoutPKTable, CustomRowClass> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableWithoutPKTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _notReallyAnIdMeta =
      const VerificationMeta('notReallyAnId');
  @override
  late final GeneratedColumn<int> notReallyAnId = GeneratedColumn<int>(
      'not_really_an_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _someFloatMeta =
      const VerificationMeta('someFloat');
  @override
  late final GeneratedColumn<double> someFloat = GeneratedColumn<double>(
      'some_float', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _webSafeIntMeta =
      const VerificationMeta('webSafeInt');
  @override
  late final GeneratedColumn<BigInt> webSafeInt = GeneratedColumn<BigInt>(
      'web_safe_int', aliasedName, true,
      type: DriftSqlType.bigInt, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<MyCustomObject, String> custom =
      GeneratedColumn<String>('custom', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: _uuid.v4)
          .withConverter<MyCustomObject>($TableWithoutPKTable.$convertercustom);
  @override
  List<GeneratedColumn> get $columns =>
      [notReallyAnId, someFloat, webSafeInt, custom];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_without_p_k';
  @override
  VerificationContext validateIntegrity(Insertable<CustomRowClass> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('not_really_an_id')) {
      context.handle(
          _notReallyAnIdMeta,
          notReallyAnId.isAcceptableOrUnknown(
              data['not_really_an_id']!, _notReallyAnIdMeta));
    } else if (isInserting) {
      context.missing(_notReallyAnIdMeta);
    }
    if (data.containsKey('some_float')) {
      context.handle(_someFloatMeta,
          someFloat.isAcceptableOrUnknown(data['some_float']!, _someFloatMeta));
    } else if (isInserting) {
      context.missing(_someFloatMeta);
    }
    if (data.containsKey('web_safe_int')) {
      context.handle(
          _webSafeIntMeta,
          webSafeInt.isAcceptableOrUnknown(
              data['web_safe_int']!, _webSafeIntMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CustomRowClass map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomRowClass.map(
      attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}not_really_an_id'])!,
      attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}some_float'])!,
      custom: $TableWithoutPKTable.$convertercustom.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}custom'])!),
      webSafeInt: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}web_safe_int']),
    );
  }

  @override
  $TableWithoutPKTable createAlias(String alias) {
    return $TableWithoutPKTable(attachedDatabase, alias);
  }

  static TypeConverter<MyCustomObject, String> $convertercustom =
      const CustomConverter();
}

class TableWithoutPKCompanion extends UpdateCompanion<CustomRowClass> {
  final Value<int> notReallyAnId;
  final Value<double> someFloat;
  final Value<BigInt?> webSafeInt;
  final Value<MyCustomObject> custom;
  final Value<int> rowid;
  const TableWithoutPKCompanion({
    this.notReallyAnId = const Value.absent(),
    this.someFloat = const Value.absent(),
    this.webSafeInt = const Value.absent(),
    this.custom = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TableWithoutPKCompanion.insert({
    required int notReallyAnId,
    required double someFloat,
    this.webSafeInt = const Value.absent(),
    this.custom = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : notReallyAnId = Value(notReallyAnId),
        someFloat = Value(someFloat);
  static Insertable<CustomRowClass> createCustom({
    Expression<int>? notReallyAnId,
    Expression<double>? someFloat,
    Expression<BigInt>? webSafeInt,
    Expression<String>? custom,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (notReallyAnId != null) 'not_really_an_id': notReallyAnId,
      if (someFloat != null) 'some_float': someFloat,
      if (webSafeInt != null) 'web_safe_int': webSafeInt,
      if (custom != null) 'custom': custom,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TableWithoutPKCompanion copyWith(
      {Value<int>? notReallyAnId,
      Value<double>? someFloat,
      Value<BigInt?>? webSafeInt,
      Value<MyCustomObject>? custom,
      Value<int>? rowid}) {
    return TableWithoutPKCompanion(
      notReallyAnId: notReallyAnId ?? this.notReallyAnId,
      someFloat: someFloat ?? this.someFloat,
      webSafeInt: webSafeInt ?? this.webSafeInt,
      custom: custom ?? this.custom,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (notReallyAnId.present) {
      map['not_really_an_id'] = Variable<int>(notReallyAnId.value);
    }
    if (someFloat.present) {
      map['some_float'] = Variable<double>(someFloat.value);
    }
    if (webSafeInt.present) {
      map['web_safe_int'] = Variable<BigInt>(webSafeInt.value);
    }
    if (custom.present) {
      map['custom'] = Variable<String>(
          $TableWithoutPKTable.$convertercustom.toSql(custom.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableWithoutPKCompanion(')
          ..write('notReallyAnId: $notReallyAnId, ')
          ..write('someFloat: $someFloat, ')
          ..write('webSafeInt: $webSafeInt, ')
          ..write('custom: $custom, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class _$CustomRowClassInsertable implements Insertable<CustomRowClass> {
  CustomRowClass _object;
  _$CustomRowClassInsertable(this._object);
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return TableWithoutPKCompanion(
      notReallyAnId: Value(_object.notReallyAnId),
      someFloat: Value(_object.someFloat),
      webSafeInt: Value(_object.webSafeInt),
      custom: Value(_object.custom),
    ).toColumns(false);
  }
}

extension CustomRowClassToInsertable on CustomRowClass {
  _$CustomRowClassInsertable toInsertable() {
    return _$CustomRowClassInsertable(this);
  }
}

class $PureDefaultsTable extends PureDefaults
    with TableInfo<$PureDefaultsTable, PureDefault> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PureDefaultsTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<MyCustomObject?, String> txt =
      GeneratedColumn<String>('insert', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MyCustomObject?>($PureDefaultsTable.$convertertxtn);
  @override
  List<GeneratedColumn> get $columns => [txt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pure_defaults';
  @override
  Set<GeneratedColumn> get $primaryKey => {txt};
  @override
  PureDefault map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PureDefault(
      txt: $PureDefaultsTable.$convertertxtn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}insert'])),
    );
  }

  @override
  $PureDefaultsTable createAlias(String alias) {
    return $PureDefaultsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MyCustomObject, String, Map<dynamic, dynamic>>
      $convertertxt = const CustomJsonConverter();
  static JsonTypeConverter2<MyCustomObject?, String?, Map<dynamic, dynamic>?>
      $convertertxtn = JsonTypeConverter2.asNullable($convertertxt);
}

class PureDefault extends DataClass implements Insertable<PureDefault> {
  final MyCustomObject? txt;
  const PureDefault({this.txt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || txt != null) {
      map['insert'] =
          Variable<String>($PureDefaultsTable.$convertertxtn.toSql(txt));
    }
    return map;
  }

  PureDefaultsCompanion toCompanion(bool nullToAbsent) {
    return PureDefaultsCompanion(
      txt: txt == null && nullToAbsent ? const Value.absent() : Value(txt),
    );
  }

  factory PureDefault.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PureDefault(
      txt: $PureDefaultsTable.$convertertxtn
          .fromJson(serializer.fromJson<Map<dynamic, dynamic>?>(json['txt'])),
    );
  }
  factory PureDefault.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      PureDefault.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'txt': serializer.toJson<Map<dynamic, dynamic>?>(
          $PureDefaultsTable.$convertertxtn.toJson(txt)),
    };
  }

  PureDefault copyWith({Value<MyCustomObject?> txt = const Value.absent()}) =>
      PureDefault(
        txt: txt.present ? txt.value : this.txt,
      );
  PureDefault copyWithCompanion(PureDefaultsCompanion data) {
    return PureDefault(
      txt: data.txt.present ? data.txt.value : this.txt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PureDefault(')
          ..write('txt: $txt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => txt.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is PureDefault && other.txt == this.txt);
}

class PureDefaultsCompanion extends UpdateCompanion<PureDefault> {
  final Value<MyCustomObject?> txt;
  final Value<int> rowid;
  const PureDefaultsCompanion({
    this.txt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PureDefaultsCompanion.insert({
    this.txt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<PureDefault> custom({
    Expression<String>? txt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (txt != null) 'insert': txt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PureDefaultsCompanion copyWith(
      {Value<MyCustomObject?>? txt, Value<int>? rowid}) {
    return PureDefaultsCompanion(
      txt: txt ?? this.txt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (txt.present) {
      map['insert'] =
          Variable<String>($PureDefaultsTable.$convertertxtn.toSql(txt.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PureDefaultsCompanion(')
          ..write('txt: $txt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WithCustomTypeTable extends WithCustomType
    with TableInfo<$WithCustomTypeTable, WithCustomTypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WithCustomTypeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<UuidValue> id = GeneratedColumn<UuidValue>(
      'id', aliasedName, false,
      type: uuidType, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'with_custom_type';
  @override
  VerificationContext validateIntegrity(Insertable<WithCustomTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  WithCustomTypeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WithCustomTypeData(
      id: attachedDatabase.typeMapping
          .read(uuidType, data['${effectivePrefix}id'])!,
    );
  }

  @override
  $WithCustomTypeTable createAlias(String alias) {
    return $WithCustomTypeTable(attachedDatabase, alias);
  }
}

class WithCustomTypeData extends DataClass
    implements Insertable<WithCustomTypeData> {
  final UuidValue id;
  const WithCustomTypeData({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<UuidValue>(id, uuidType);
    return map;
  }

  WithCustomTypeCompanion toCompanion(bool nullToAbsent) {
    return WithCustomTypeCompanion(
      id: Value(id),
    );
  }

  factory WithCustomTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WithCustomTypeData(
      id: serializer.fromJson<UuidValue>(json['id']),
    );
  }
  factory WithCustomTypeData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      WithCustomTypeData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<UuidValue>(id),
    };
  }

  WithCustomTypeData copyWith({UuidValue? id}) => WithCustomTypeData(
        id: id ?? this.id,
      );
  WithCustomTypeData copyWithCompanion(WithCustomTypeCompanion data) {
    return WithCustomTypeData(
      id: data.id.present ? data.id.value : this.id,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WithCustomTypeData(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WithCustomTypeData && other.id == this.id);
}

class WithCustomTypeCompanion extends UpdateCompanion<WithCustomTypeData> {
  final Value<UuidValue> id;
  final Value<int> rowid;
  const WithCustomTypeCompanion({
    this.id = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WithCustomTypeCompanion.insert({
    required UuidValue id,
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<WithCustomTypeData> custom({
    Expression<UuidValue>? id,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WithCustomTypeCompanion copyWith({Value<UuidValue>? id, Value<int>? rowid}) {
    return WithCustomTypeCompanion(
      id: id ?? this.id,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(id.value, uuidType);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WithCustomTypeCompanion(')
          ..write('id: $id, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TableWithEveryColumnTypeTable extends TableWithEveryColumnType
    with
        TableInfo<$TableWithEveryColumnTypeTable,
            TableWithEveryColumnTypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TableWithEveryColumnTypeTable(this.attachedDatabase, [this._alias]);
  @override
  late final GeneratedColumnWithTypeConverter<RowId, int> id = GeneratedColumn<
              int>('id', aliasedName, false,
          hasAutoIncrement: true,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultConstraints:
              GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'))
      .withConverter<RowId>($TableWithEveryColumnTypeTable.$converterid);
  static const VerificationMeta _aBoolMeta = const VerificationMeta('aBool');
  @override
  late final GeneratedColumn<bool> aBool = GeneratedColumn<bool>(
      'a_bool', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("a_bool" IN (0, 1))'));
  static const VerificationMeta _aDateTimeMeta =
      const VerificationMeta('aDateTime');
  @override
  late final GeneratedColumn<DateTime> aDateTime = GeneratedColumn<DateTime>(
      'a_date_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _aTextMeta = const VerificationMeta('aText');
  @override
  late final GeneratedColumn<String> aText = GeneratedColumn<String>(
      'a_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _anIntMeta = const VerificationMeta('anInt');
  @override
  late final GeneratedColumn<int> anInt = GeneratedColumn<int>(
      'an_int', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _anInt64Meta =
      const VerificationMeta('anInt64');
  @override
  late final GeneratedColumn<BigInt> anInt64 = GeneratedColumn<BigInt>(
      'an_int64', aliasedName, true,
      type: DriftSqlType.bigInt, requiredDuringInsert: false);
  static const VerificationMeta _aRealMeta = const VerificationMeta('aReal');
  @override
  late final GeneratedColumn<double> aReal = GeneratedColumn<double>(
      'a_real', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _aBlobMeta = const VerificationMeta('aBlob');
  @override
  late final GeneratedColumn<Uint8List> aBlob = GeneratedColumn<Uint8List>(
      'a_blob', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<TodoStatus?, int> anIntEnum =
      GeneratedColumn<int>('an_int_enum', aliasedName, true,
              type: DriftSqlType.int, requiredDuringInsert: false)
          .withConverter<TodoStatus?>(
              $TableWithEveryColumnTypeTable.$converteranIntEnumn);
  @override
  late final GeneratedColumnWithTypeConverter<MyCustomObject?, String>
      aTextWithConverter = GeneratedColumn<String>('insert', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MyCustomObject?>(
              $TableWithEveryColumnTypeTable.$converteraTextWithConvertern);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        aBool,
        aDateTime,
        aText,
        anInt,
        anInt64,
        aReal,
        aBlob,
        anIntEnum,
        aTextWithConverter
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'table_with_every_column_type';
  @override
  VerificationContext validateIntegrity(
      Insertable<TableWithEveryColumnTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('a_bool')) {
      context.handle(
          _aBoolMeta, aBool.isAcceptableOrUnknown(data['a_bool']!, _aBoolMeta));
    }
    if (data.containsKey('a_date_time')) {
      context.handle(
          _aDateTimeMeta,
          aDateTime.isAcceptableOrUnknown(
              data['a_date_time']!, _aDateTimeMeta));
    }
    if (data.containsKey('a_text')) {
      context.handle(
          _aTextMeta, aText.isAcceptableOrUnknown(data['a_text']!, _aTextMeta));
    }
    if (data.containsKey('an_int')) {
      context.handle(
          _anIntMeta, anInt.isAcceptableOrUnknown(data['an_int']!, _anIntMeta));
    }
    if (data.containsKey('an_int64')) {
      context.handle(_anInt64Meta,
          anInt64.isAcceptableOrUnknown(data['an_int64']!, _anInt64Meta));
    }
    if (data.containsKey('a_real')) {
      context.handle(
          _aRealMeta, aReal.isAcceptableOrUnknown(data['a_real']!, _aRealMeta));
    }
    if (data.containsKey('a_blob')) {
      context.handle(
          _aBlobMeta, aBlob.isAcceptableOrUnknown(data['a_blob']!, _aBlobMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TableWithEveryColumnTypeData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TableWithEveryColumnTypeData(
      id: $TableWithEveryColumnTypeTable.$converterid.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      aBool: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}a_bool']),
      aDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}a_date_time']),
      aText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}a_text']),
      anInt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}an_int']),
      anInt64: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}an_int64']),
      aReal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}a_real']),
      aBlob: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}a_blob']),
      anIntEnum: $TableWithEveryColumnTypeTable.$converteranIntEnumn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}an_int_enum'])),
      aTextWithConverter: $TableWithEveryColumnTypeTable
          .$converteraTextWithConvertern
          .fromSql(attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}insert'])),
    );
  }

  @override
  $TableWithEveryColumnTypeTable createAlias(String alias) {
    return $TableWithEveryColumnTypeTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<RowId, int, int> $converterid =
      TypeConverter.extensionType<RowId, int>();
  static JsonTypeConverter2<TodoStatus, int, int> $converteranIntEnum =
      const EnumIndexConverter<TodoStatus>(TodoStatus.values);
  static JsonTypeConverter2<TodoStatus?, int?, int?> $converteranIntEnumn =
      JsonTypeConverter2.asNullable($converteranIntEnum);
  static JsonTypeConverter2<MyCustomObject, String, Map<dynamic, dynamic>>
      $converteraTextWithConverter = const CustomJsonConverter();
  static JsonTypeConverter2<MyCustomObject?, String?, Map<dynamic, dynamic>?>
      $converteraTextWithConvertern =
      JsonTypeConverter2.asNullable($converteraTextWithConverter);
}

class TableWithEveryColumnTypeData extends DataClass
    implements Insertable<TableWithEveryColumnTypeData> {
  final RowId id;
  final bool? aBool;
  final DateTime? aDateTime;
  final String? aText;
  final int? anInt;
  final BigInt? anInt64;
  final double? aReal;
  final Uint8List? aBlob;
  final TodoStatus? anIntEnum;
  final MyCustomObject? aTextWithConverter;
  const TableWithEveryColumnTypeData(
      {required this.id,
      this.aBool,
      this.aDateTime,
      this.aText,
      this.anInt,
      this.anInt64,
      this.aReal,
      this.aBlob,
      this.anIntEnum,
      this.aTextWithConverter});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['id'] =
          Variable<int>($TableWithEveryColumnTypeTable.$converterid.toSql(id));
    }
    if (!nullToAbsent || aBool != null) {
      map['a_bool'] = Variable<bool>(aBool);
    }
    if (!nullToAbsent || aDateTime != null) {
      map['a_date_time'] = Variable<DateTime>(aDateTime);
    }
    if (!nullToAbsent || aText != null) {
      map['a_text'] = Variable<String>(aText);
    }
    if (!nullToAbsent || anInt != null) {
      map['an_int'] = Variable<int>(anInt);
    }
    if (!nullToAbsent || anInt64 != null) {
      map['an_int64'] = Variable<BigInt>(anInt64);
    }
    if (!nullToAbsent || aReal != null) {
      map['a_real'] = Variable<double>(aReal);
    }
    if (!nullToAbsent || aBlob != null) {
      map['a_blob'] = Variable<Uint8List>(aBlob);
    }
    if (!nullToAbsent || anIntEnum != null) {
      map['an_int_enum'] = Variable<int>(
          $TableWithEveryColumnTypeTable.$converteranIntEnumn.toSql(anIntEnum));
    }
    if (!nullToAbsent || aTextWithConverter != null) {
      map['insert'] = Variable<String>($TableWithEveryColumnTypeTable
          .$converteraTextWithConvertern
          .toSql(aTextWithConverter));
    }
    return map;
  }

  TableWithEveryColumnTypeCompanion toCompanion(bool nullToAbsent) {
    return TableWithEveryColumnTypeCompanion(
      id: Value(id),
      aBool:
          aBool == null && nullToAbsent ? const Value.absent() : Value(aBool),
      aDateTime: aDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(aDateTime),
      aText:
          aText == null && nullToAbsent ? const Value.absent() : Value(aText),
      anInt:
          anInt == null && nullToAbsent ? const Value.absent() : Value(anInt),
      anInt64: anInt64 == null && nullToAbsent
          ? const Value.absent()
          : Value(anInt64),
      aReal:
          aReal == null && nullToAbsent ? const Value.absent() : Value(aReal),
      aBlob:
          aBlob == null && nullToAbsent ? const Value.absent() : Value(aBlob),
      anIntEnum: anIntEnum == null && nullToAbsent
          ? const Value.absent()
          : Value(anIntEnum),
      aTextWithConverter: aTextWithConverter == null && nullToAbsent
          ? const Value.absent()
          : Value(aTextWithConverter),
    );
  }

  factory TableWithEveryColumnTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TableWithEveryColumnTypeData(
      id: $TableWithEveryColumnTypeTable.$converterid
          .fromJson(serializer.fromJson<int>(json['id'])),
      aBool: serializer.fromJson<bool?>(json['aBool']),
      aDateTime: serializer.fromJson<DateTime?>(json['aDateTime']),
      aText: serializer.fromJson<String?>(json['aText']),
      anInt: serializer.fromJson<int?>(json['anInt']),
      anInt64: serializer.fromJson<BigInt?>(json['anInt64']),
      aReal: serializer.fromJson<double?>(json['aReal']),
      aBlob: serializer.fromJson<Uint8List?>(json['aBlob']),
      anIntEnum: $TableWithEveryColumnTypeTable.$converteranIntEnumn
          .fromJson(serializer.fromJson<int?>(json['anIntEnum'])),
      aTextWithConverter: $TableWithEveryColumnTypeTable
          .$converteraTextWithConvertern
          .fromJson(serializer
              .fromJson<Map<dynamic, dynamic>?>(json['aTextWithConverter'])),
    );
  }
  factory TableWithEveryColumnTypeData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TableWithEveryColumnTypeData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer
          .toJson<int>($TableWithEveryColumnTypeTable.$converterid.toJson(id)),
      'aBool': serializer.toJson<bool?>(aBool),
      'aDateTime': serializer.toJson<DateTime?>(aDateTime),
      'aText': serializer.toJson<String?>(aText),
      'anInt': serializer.toJson<int?>(anInt),
      'anInt64': serializer.toJson<BigInt?>(anInt64),
      'aReal': serializer.toJson<double?>(aReal),
      'aBlob': serializer.toJson<Uint8List?>(aBlob),
      'anIntEnum': serializer.toJson<int?>($TableWithEveryColumnTypeTable
          .$converteranIntEnumn
          .toJson(anIntEnum)),
      'aTextWithConverter': serializer.toJson<Map<dynamic, dynamic>?>(
          $TableWithEveryColumnTypeTable.$converteraTextWithConvertern
              .toJson(aTextWithConverter)),
    };
  }

  TableWithEveryColumnTypeData copyWith(
          {RowId? id,
          Value<bool?> aBool = const Value.absent(),
          Value<DateTime?> aDateTime = const Value.absent(),
          Value<String?> aText = const Value.absent(),
          Value<int?> anInt = const Value.absent(),
          Value<BigInt?> anInt64 = const Value.absent(),
          Value<double?> aReal = const Value.absent(),
          Value<Uint8List?> aBlob = const Value.absent(),
          Value<TodoStatus?> anIntEnum = const Value.absent(),
          Value<MyCustomObject?> aTextWithConverter = const Value.absent()}) =>
      TableWithEveryColumnTypeData(
        id: id ?? this.id,
        aBool: aBool.present ? aBool.value : this.aBool,
        aDateTime: aDateTime.present ? aDateTime.value : this.aDateTime,
        aText: aText.present ? aText.value : this.aText,
        anInt: anInt.present ? anInt.value : this.anInt,
        anInt64: anInt64.present ? anInt64.value : this.anInt64,
        aReal: aReal.present ? aReal.value : this.aReal,
        aBlob: aBlob.present ? aBlob.value : this.aBlob,
        anIntEnum: anIntEnum.present ? anIntEnum.value : this.anIntEnum,
        aTextWithConverter: aTextWithConverter.present
            ? aTextWithConverter.value
            : this.aTextWithConverter,
      );
  TableWithEveryColumnTypeData copyWithCompanion(
      TableWithEveryColumnTypeCompanion data) {
    return TableWithEveryColumnTypeData(
      id: data.id.present ? data.id.value : this.id,
      aBool: data.aBool.present ? data.aBool.value : this.aBool,
      aDateTime: data.aDateTime.present ? data.aDateTime.value : this.aDateTime,
      aText: data.aText.present ? data.aText.value : this.aText,
      anInt: data.anInt.present ? data.anInt.value : this.anInt,
      anInt64: data.anInt64.present ? data.anInt64.value : this.anInt64,
      aReal: data.aReal.present ? data.aReal.value : this.aReal,
      aBlob: data.aBlob.present ? data.aBlob.value : this.aBlob,
      anIntEnum: data.anIntEnum.present ? data.anIntEnum.value : this.anIntEnum,
      aTextWithConverter: data.aTextWithConverter.present
          ? data.aTextWithConverter.value
          : this.aTextWithConverter,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TableWithEveryColumnTypeData(')
          ..write('id: $id, ')
          ..write('aBool: $aBool, ')
          ..write('aDateTime: $aDateTime, ')
          ..write('aText: $aText, ')
          ..write('anInt: $anInt, ')
          ..write('anInt64: $anInt64, ')
          ..write('aReal: $aReal, ')
          ..write('aBlob: $aBlob, ')
          ..write('anIntEnum: $anIntEnum, ')
          ..write('aTextWithConverter: $aTextWithConverter')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, aBool, aDateTime, aText, anInt, anInt64,
      aReal, $driftBlobEquality.hash(aBlob), anIntEnum, aTextWithConverter);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TableWithEveryColumnTypeData &&
          other.id == this.id &&
          other.aBool == this.aBool &&
          other.aDateTime == this.aDateTime &&
          other.aText == this.aText &&
          other.anInt == this.anInt &&
          other.anInt64 == this.anInt64 &&
          other.aReal == this.aReal &&
          $driftBlobEquality.equals(other.aBlob, this.aBlob) &&
          other.anIntEnum == this.anIntEnum &&
          other.aTextWithConverter == this.aTextWithConverter);
}

class TableWithEveryColumnTypeCompanion
    extends UpdateCompanion<TableWithEveryColumnTypeData> {
  final Value<RowId> id;
  final Value<bool?> aBool;
  final Value<DateTime?> aDateTime;
  final Value<String?> aText;
  final Value<int?> anInt;
  final Value<BigInt?> anInt64;
  final Value<double?> aReal;
  final Value<Uint8List?> aBlob;
  final Value<TodoStatus?> anIntEnum;
  final Value<MyCustomObject?> aTextWithConverter;
  const TableWithEveryColumnTypeCompanion({
    this.id = const Value.absent(),
    this.aBool = const Value.absent(),
    this.aDateTime = const Value.absent(),
    this.aText = const Value.absent(),
    this.anInt = const Value.absent(),
    this.anInt64 = const Value.absent(),
    this.aReal = const Value.absent(),
    this.aBlob = const Value.absent(),
    this.anIntEnum = const Value.absent(),
    this.aTextWithConverter = const Value.absent(),
  });
  TableWithEveryColumnTypeCompanion.insert({
    this.id = const Value.absent(),
    this.aBool = const Value.absent(),
    this.aDateTime = const Value.absent(),
    this.aText = const Value.absent(),
    this.anInt = const Value.absent(),
    this.anInt64 = const Value.absent(),
    this.aReal = const Value.absent(),
    this.aBlob = const Value.absent(),
    this.anIntEnum = const Value.absent(),
    this.aTextWithConverter = const Value.absent(),
  });
  static Insertable<TableWithEveryColumnTypeData> custom({
    Expression<int>? id,
    Expression<bool>? aBool,
    Expression<DateTime>? aDateTime,
    Expression<String>? aText,
    Expression<int>? anInt,
    Expression<BigInt>? anInt64,
    Expression<double>? aReal,
    Expression<Uint8List>? aBlob,
    Expression<int>? anIntEnum,
    Expression<String>? aTextWithConverter,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (aBool != null) 'a_bool': aBool,
      if (aDateTime != null) 'a_date_time': aDateTime,
      if (aText != null) 'a_text': aText,
      if (anInt != null) 'an_int': anInt,
      if (anInt64 != null) 'an_int64': anInt64,
      if (aReal != null) 'a_real': aReal,
      if (aBlob != null) 'a_blob': aBlob,
      if (anIntEnum != null) 'an_int_enum': anIntEnum,
      if (aTextWithConverter != null) 'insert': aTextWithConverter,
    });
  }

  TableWithEveryColumnTypeCompanion copyWith(
      {Value<RowId>? id,
      Value<bool?>? aBool,
      Value<DateTime?>? aDateTime,
      Value<String?>? aText,
      Value<int?>? anInt,
      Value<BigInt?>? anInt64,
      Value<double?>? aReal,
      Value<Uint8List?>? aBlob,
      Value<TodoStatus?>? anIntEnum,
      Value<MyCustomObject?>? aTextWithConverter}) {
    return TableWithEveryColumnTypeCompanion(
      id: id ?? this.id,
      aBool: aBool ?? this.aBool,
      aDateTime: aDateTime ?? this.aDateTime,
      aText: aText ?? this.aText,
      anInt: anInt ?? this.anInt,
      anInt64: anInt64 ?? this.anInt64,
      aReal: aReal ?? this.aReal,
      aBlob: aBlob ?? this.aBlob,
      anIntEnum: anIntEnum ?? this.anIntEnum,
      aTextWithConverter: aTextWithConverter ?? this.aTextWithConverter,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(
          $TableWithEveryColumnTypeTable.$converterid.toSql(id.value));
    }
    if (aBool.present) {
      map['a_bool'] = Variable<bool>(aBool.value);
    }
    if (aDateTime.present) {
      map['a_date_time'] = Variable<DateTime>(aDateTime.value);
    }
    if (aText.present) {
      map['a_text'] = Variable<String>(aText.value);
    }
    if (anInt.present) {
      map['an_int'] = Variable<int>(anInt.value);
    }
    if (anInt64.present) {
      map['an_int64'] = Variable<BigInt>(anInt64.value);
    }
    if (aReal.present) {
      map['a_real'] = Variable<double>(aReal.value);
    }
    if (aBlob.present) {
      map['a_blob'] = Variable<Uint8List>(aBlob.value);
    }
    if (anIntEnum.present) {
      map['an_int_enum'] = Variable<int>($TableWithEveryColumnTypeTable
          .$converteranIntEnumn
          .toSql(anIntEnum.value));
    }
    if (aTextWithConverter.present) {
      map['insert'] = Variable<String>($TableWithEveryColumnTypeTable
          .$converteraTextWithConvertern
          .toSql(aTextWithConverter.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableWithEveryColumnTypeCompanion(')
          ..write('id: $id, ')
          ..write('aBool: $aBool, ')
          ..write('aDateTime: $aDateTime, ')
          ..write('aText: $aText, ')
          ..write('anInt: $anInt, ')
          ..write('anInt64: $anInt64, ')
          ..write('aReal: $aReal, ')
          ..write('aBlob: $aBlob, ')
          ..write('anIntEnum: $anIntEnum, ')
          ..write('aTextWithConverter: $aTextWithConverter')
          ..write(')'))
        .toString();
  }
}

class $DepartmentTable extends Department
    with TableInfo<$DepartmentTable, DepartmentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DepartmentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'department';
  @override
  VerificationContext validateIntegrity(Insertable<DepartmentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DepartmentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DepartmentData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $DepartmentTable createAlias(String alias) {
    return $DepartmentTable(attachedDatabase, alias);
  }
}

class DepartmentData extends DataClass implements Insertable<DepartmentData> {
  final int id;
  final String? name;
  const DepartmentData({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  DepartmentCompanion toCompanion(bool nullToAbsent) {
    return DepartmentCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory DepartmentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DepartmentData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  factory DepartmentData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      DepartmentData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  DepartmentData copyWith(
          {int? id, Value<String?> name = const Value.absent()}) =>
      DepartmentData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  DepartmentData copyWithCompanion(DepartmentCompanion data) {
    return DepartmentData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DepartmentData &&
          other.id == this.id &&
          other.name == this.name);
}

class DepartmentCompanion extends UpdateCompanion<DepartmentData> {
  final Value<int> id;
  final Value<String?> name;
  const DepartmentCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  DepartmentCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<DepartmentData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  DepartmentCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return DepartmentCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DepartmentCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ProductTable extends Product with TableInfo<$ProductTable, ProductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
      'sku', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _departmentMeta =
      const VerificationMeta('department');
  @override
  late final GeneratedColumn<int> department = GeneratedColumn<int>(
      'department', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES department (id)'));
  @override
  List<GeneratedColumn> get $columns => [sku, name, department];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product';
  @override
  VerificationContext validateIntegrity(Insertable<ProductData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sku')) {
      context.handle(
          _skuMeta, sku.isAcceptableOrUnknown(data['sku']!, _skuMeta));
    } else if (isInserting) {
      context.missing(_skuMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('department')) {
      context.handle(
          _departmentMeta,
          department.isAcceptableOrUnknown(
              data['department']!, _departmentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ProductData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductData(
      sku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sku'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      department: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}department']),
    );
  }

  @override
  $ProductTable createAlias(String alias) {
    return $ProductTable(attachedDatabase, alias);
  }
}

class ProductData extends DataClass implements Insertable<ProductData> {
  final String sku;
  final String? name;
  final int? department;
  const ProductData({required this.sku, this.name, this.department});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['sku'] = Variable<String>(sku);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || department != null) {
      map['department'] = Variable<int>(department);
    }
    return map;
  }

  ProductCompanion toCompanion(bool nullToAbsent) {
    return ProductCompanion(
      sku: Value(sku),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      department: department == null && nullToAbsent
          ? const Value.absent()
          : Value(department),
    );
  }

  factory ProductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductData(
      sku: serializer.fromJson<String>(json['sku']),
      name: serializer.fromJson<String?>(json['name']),
      department: serializer.fromJson<int?>(json['department']),
    );
  }
  factory ProductData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      ProductData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sku': serializer.toJson<String>(sku),
      'name': serializer.toJson<String?>(name),
      'department': serializer.toJson<int?>(department),
    };
  }

  ProductData copyWith(
          {String? sku,
          Value<String?> name = const Value.absent(),
          Value<int?> department = const Value.absent()}) =>
      ProductData(
        sku: sku ?? this.sku,
        name: name.present ? name.value : this.name,
        department: department.present ? department.value : this.department,
      );
  ProductData copyWithCompanion(ProductCompanion data) {
    return ProductData(
      sku: data.sku.present ? data.sku.value : this.sku,
      name: data.name.present ? data.name.value : this.name,
      department:
          data.department.present ? data.department.value : this.department,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductData(')
          ..write('sku: $sku, ')
          ..write('name: $name, ')
          ..write('department: $department')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(sku, name, department);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductData &&
          other.sku == this.sku &&
          other.name == this.name &&
          other.department == this.department);
}

class ProductCompanion extends UpdateCompanion<ProductData> {
  final Value<String> sku;
  final Value<String?> name;
  final Value<int?> department;
  final Value<int> rowid;
  const ProductCompanion({
    this.sku = const Value.absent(),
    this.name = const Value.absent(),
    this.department = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductCompanion.insert({
    required String sku,
    this.name = const Value.absent(),
    this.department = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : sku = Value(sku);
  static Insertable<ProductData> custom({
    Expression<String>? sku,
    Expression<String>? name,
    Expression<int>? department,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (sku != null) 'sku': sku,
      if (name != null) 'name': name,
      if (department != null) 'department': department,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductCompanion copyWith(
      {Value<String>? sku,
      Value<String?>? name,
      Value<int?>? department,
      Value<int>? rowid}) {
    return ProductCompanion(
      sku: sku ?? this.sku,
      name: name ?? this.name,
      department: department ?? this.department,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (department.present) {
      map['department'] = Variable<int>(department.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCompanion(')
          ..write('sku: $sku, ')
          ..write('name: $name, ')
          ..write('department: $department, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StoreTable extends Store with TableInfo<$StoreTable, StoreData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoreTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'store';
  @override
  VerificationContext validateIntegrity(Insertable<StoreData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StoreData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoreData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $StoreTable createAlias(String alias) {
    return $StoreTable(attachedDatabase, alias);
  }
}

class StoreData extends DataClass implements Insertable<StoreData> {
  final int id;
  final String? name;
  const StoreData({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  StoreCompanion toCompanion(bool nullToAbsent) {
    return StoreCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory StoreData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StoreData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  factory StoreData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      StoreData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  StoreData copyWith({int? id, Value<String?> name = const Value.absent()}) =>
      StoreData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  StoreData copyWithCompanion(StoreCompanion data) {
    return StoreData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StoreData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StoreData && other.id == this.id && other.name == this.name);
}

class StoreCompanion extends UpdateCompanion<StoreData> {
  final Value<int> id;
  final Value<String?> name;
  const StoreCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  StoreCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<StoreData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  StoreCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return StoreCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoreCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ListingTable extends Listing with TableInfo<$ListingTable, ListingData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ListingTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productMeta =
      const VerificationMeta('product');
  @override
  late final GeneratedColumn<String> product = GeneratedColumn<String>(
      'product', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES product (sku)'));
  static const VerificationMeta _storeMeta = const VerificationMeta('store');
  @override
  late final GeneratedColumn<int> store = GeneratedColumn<int>(
      'store', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES store (id)'));
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, product, store, price];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'listing';
  @override
  VerificationContext validateIntegrity(Insertable<ListingData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product')) {
      context.handle(_productMeta,
          product.isAcceptableOrUnknown(data['product']!, _productMeta));
    } else if (isInserting) {
      context.missing(_productMeta);
    }
    if (data.containsKey('store')) {
      context.handle(
          _storeMeta, store.isAcceptableOrUnknown(data['store']!, _storeMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ListingData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ListingData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      product: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product'])!,
      store: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
    );
  }

  @override
  $ListingTable createAlias(String alias) {
    return $ListingTable(attachedDatabase, alias);
  }
}

class ListingData extends DataClass implements Insertable<ListingData> {
  final int id;
  final String product;
  final int? store;
  final double? price;
  const ListingData(
      {required this.id, required this.product, this.store, this.price});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product'] = Variable<String>(product);
    if (!nullToAbsent || store != null) {
      map['store'] = Variable<int>(store);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    return map;
  }

  ListingCompanion toCompanion(bool nullToAbsent) {
    return ListingCompanion(
      id: Value(id),
      product: Value(product),
      store:
          store == null && nullToAbsent ? const Value.absent() : Value(store),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  factory ListingData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ListingData(
      id: serializer.fromJson<int>(json['id']),
      product: serializer.fromJson<String>(json['product']),
      store: serializer.fromJson<int?>(json['store']),
      price: serializer.fromJson<double?>(json['price']),
    );
  }
  factory ListingData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      ListingData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'product': serializer.toJson<String>(product),
      'store': serializer.toJson<int?>(store),
      'price': serializer.toJson<double?>(price),
    };
  }

  ListingData copyWith(
          {int? id,
          String? product,
          Value<int?> store = const Value.absent(),
          Value<double?> price = const Value.absent()}) =>
      ListingData(
        id: id ?? this.id,
        product: product ?? this.product,
        store: store.present ? store.value : this.store,
        price: price.present ? price.value : this.price,
      );
  ListingData copyWithCompanion(ListingCompanion data) {
    return ListingData(
      id: data.id.present ? data.id.value : this.id,
      product: data.product.present ? data.product.value : this.product,
      store: data.store.present ? data.store.value : this.store,
      price: data.price.present ? data.price.value : this.price,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ListingData(')
          ..write('id: $id, ')
          ..write('product: $product, ')
          ..write('store: $store, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, product, store, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ListingData &&
          other.id == this.id &&
          other.product == this.product &&
          other.store == this.store &&
          other.price == this.price);
}

class ListingCompanion extends UpdateCompanion<ListingData> {
  final Value<int> id;
  final Value<String> product;
  final Value<int?> store;
  final Value<double?> price;
  const ListingCompanion({
    this.id = const Value.absent(),
    this.product = const Value.absent(),
    this.store = const Value.absent(),
    this.price = const Value.absent(),
  });
  ListingCompanion.insert({
    this.id = const Value.absent(),
    required String product,
    this.store = const Value.absent(),
    this.price = const Value.absent(),
  }) : product = Value(product);
  static Insertable<ListingData> custom({
    Expression<int>? id,
    Expression<String>? product,
    Expression<int>? store,
    Expression<double>? price,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (product != null) 'product': product,
      if (store != null) 'store': store,
      if (price != null) 'price': price,
    });
  }

  ListingCompanion copyWith(
      {Value<int>? id,
      Value<String>? product,
      Value<int?>? store,
      Value<double?>? price}) {
    return ListingCompanion(
      id: id ?? this.id,
      product: product ?? this.product,
      store: store ?? this.store,
      price: price ?? this.price,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (product.present) {
      map['product'] = Variable<String>(product.value);
    }
    if (store.present) {
      map['store'] = Variable<int>(store.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ListingCompanion(')
          ..write('id: $id, ')
          ..write('product: $product, ')
          ..write('store: $store, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

class CategoryTodoCountViewData extends DataClass {
  final int? categoryId;
  final String? description;
  final int? itemCount;
  const CategoryTodoCountViewData(
      {this.categoryId, this.description, this.itemCount});
  factory CategoryTodoCountViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTodoCountViewData(
      categoryId: serializer.fromJson<int?>(json['categoryId']),
      description: serializer.fromJson<String?>(json['description']),
      itemCount: serializer.fromJson<int?>(json['itemCount']),
    );
  }
  factory CategoryTodoCountViewData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      CategoryTodoCountViewData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryId': serializer.toJson<int?>(categoryId),
      'description': serializer.toJson<String?>(description),
      'itemCount': serializer.toJson<int?>(itemCount),
    };
  }

  CategoryTodoCountViewData copyWith(
          {Value<int?> categoryId = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> itemCount = const Value.absent()}) =>
      CategoryTodoCountViewData(
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        description: description.present ? description.value : this.description,
        itemCount: itemCount.present ? itemCount.value : this.itemCount,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryTodoCountViewData(')
          ..write('categoryId: $categoryId, ')
          ..write('description: $description, ')
          ..write('itemCount: $itemCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(categoryId, description, itemCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTodoCountViewData &&
          other.categoryId == this.categoryId &&
          other.description == this.description &&
          other.itemCount == this.itemCount);
}

class $CategoryTodoCountViewView
    extends ViewInfo<$CategoryTodoCountViewView, CategoryTodoCountViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$TodoDb attachedDatabase;
  $CategoryTodoCountViewView(this.attachedDatabase, [this._alias]);
  $TodosTableTable get todos => attachedDatabase.todosTable.createAlias('t0');
  $CategoriesTable get categories =>
      attachedDatabase.categories.createAlias('t1');
  @override
  List<GeneratedColumn> get $columns => [categoryId, description, itemCount];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'category_todo_count_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $CategoryTodoCountViewView get asDslTable => this;
  @override
  CategoryTodoCountViewData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTodoCountViewData(
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      itemCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_count']),
    );
  }

  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, true,
      generatedAs: GeneratedAs(categories.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      generatedAs:
          GeneratedAs(categories.description + const Variable('!'), false),
      type: DriftSqlType.string);
  late final GeneratedColumn<int> itemCount = GeneratedColumn<int>(
      'item_count', aliasedName, true,
      generatedAs: GeneratedAs(BaseAggregate(todos.id).count(), false),
      type: DriftSqlType.int);
  @override
  $CategoryTodoCountViewView createAlias(String alias) {
    return $CategoryTodoCountViewView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(categories)..addColumns($columns))
          .join([innerJoin(todos, todos.category.equalsExp(categories.id))])
        ..groupBy([categories.id]);
  @override
  Set<String> get readTables => const {'todos', 'categories'};
}

class TodoWithCategoryViewData extends DataClass {
  final String? title;
  final String description;
  const TodoWithCategoryViewData({this.title, required this.description});
  factory TodoWithCategoryViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoWithCategoryViewData(
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  factory TodoWithCategoryViewData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoWithCategoryViewData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  TodoWithCategoryViewData copyWith(
          {Value<String?> title = const Value.absent(), String? description}) =>
      TodoWithCategoryViewData(
        title: title.present ? title.value : this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('TodoWithCategoryViewData(')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(title, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoWithCategoryViewData &&
          other.title == this.title &&
          other.description == this.description);
}

class $TodoWithCategoryViewView
    extends ViewInfo<$TodoWithCategoryViewView, TodoWithCategoryViewData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$TodoDb attachedDatabase;
  $TodoWithCategoryViewView(this.attachedDatabase, [this._alias]);
  $TodosTableTable get todos => attachedDatabase.todosTable.createAlias('t0');
  $CategoriesTable get categories =>
      attachedDatabase.categories.createAlias('t1');
  @override
  List<GeneratedColumn> get $columns => [title, description];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'todo_with_category_view';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $TodoWithCategoryViewView get asDslTable => this;
  @override
  TodoWithCategoryViewData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoWithCategoryViewData(
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}desc'])!,
    );
  }

  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      generatedAs: GeneratedAs(todos.title, false), type: DriftSqlType.string);
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'desc', aliasedName, false,
      generatedAs: GeneratedAs(categories.description, false),
      type: DriftSqlType.string);
  @override
  $TodoWithCategoryViewView createAlias(String alias) {
    return $TodoWithCategoryViewView(attachedDatabase, alias);
  }

  @override
  Query? get query => (attachedDatabase.selectOnly(todos)..addColumns($columns))
      .join([innerJoin(categories, categories.id.equalsExp(todos.category))]);
  @override
  Set<String> get readTables => const {'todos', 'categories'};
}

abstract class _$TodoDb extends GeneratedDatabase {
  _$TodoDb(QueryExecutor e) : super(e);
  $TodoDbManager get managers => $TodoDbManager(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $TodosTableTable todosTable = $TodosTableTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $SharedTodosTable sharedTodos = $SharedTodosTable(this);
  late final $TableWithoutPKTable tableWithoutPK = $TableWithoutPKTable(this);
  late final $PureDefaultsTable pureDefaults = $PureDefaultsTable(this);
  late final $WithCustomTypeTable withCustomType = $WithCustomTypeTable(this);
  late final $TableWithEveryColumnTypeTable tableWithEveryColumnType =
      $TableWithEveryColumnTypeTable(this);
  late final $DepartmentTable department = $DepartmentTable(this);
  late final $ProductTable product = $ProductTable(this);
  late final $StoreTable store = $StoreTable(this);
  late final $ListingTable listing = $ListingTable(this);
  late final $CategoryTodoCountViewView categoryTodoCountView =
      $CategoryTodoCountViewView(this);
  late final $TodoWithCategoryViewView todoWithCategoryView =
      $TodoWithCategoryViewView(this);
  late final SomeDao someDao = SomeDao(this as TodoDb);
  Selectable<AllTodosWithCategoryResult> allTodosWithCategory() {
    return customSelect(
        'SELECT t.*, c.id AS catId, c."desc" AS catDesc FROM todos AS t INNER JOIN categories AS c ON c.id = t.category',
        variables: [],
        readsFrom: {
          categories,
          todosTable,
        }).map((QueryRow row) => AllTodosWithCategoryResult(
          row: row,
          id: $TodosTableTable.$converterid.fromSql(row.read<int>('id')),
          title: row.readNullable<String>('title'),
          content: row.read<String>('content'),
          targetDate: row.readNullable<DateTime>('target_date'),
          category: NullAwareTypeConverter.wrapFromSql(
              $TodosTableTable.$convertercategory,
              row.readNullable<int>('category')),
          status: NullAwareTypeConverter.wrapFromSql(
              $TodosTableTable.$converterstatus,
              row.readNullable<String>('status')),
          catId: $CategoriesTable.$converterid.fromSql(row.read<int>('catId')),
          catDesc: row.read<String>('catDesc'),
        ));
  }

  Future<int> deleteTodoById(RowId var1) {
    return customUpdate(
      'DELETE FROM todos WHERE id = ?1',
      variables: [Variable<int>($TodosTableTable.$converterid.toSql(var1))],
      updates: {todosTable},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<TodoEntry> withIn(String? var1, String? var2, List<RowId> var3) {
    var $arrayStartIndex = 3;
    final expandedvar3 = $expandVar($arrayStartIndex, var3.length);
    $arrayStartIndex += var3.length;
    return customSelect(
        'SELECT * FROM todos WHERE title = ?2 OR id IN ($expandedvar3) OR title = ?1',
        variables: [
          Variable<String>(var1),
          Variable<String>(var2),
          for (var $ in var3)
            Variable<int>($TodosTableTable.$converterid.toSql($))
        ],
        readsFrom: {
          todosTable,
        }).asyncMap(todosTable.mapFromRow);
  }

  Selectable<TodoEntry> search({required RowId id}) {
    return customSelect(
        'SELECT * FROM todos WHERE CASE WHEN -1 = ?1 THEN 1 ELSE id = ?1 END',
        variables: [
          Variable<int>($TodosTableTable.$converterid.toSql(id))
        ],
        readsFrom: {
          todosTable,
        }).asyncMap(todosTable.mapFromRow);
  }

  Selectable<MyCustomObject> findCustom() {
    return customSelect(
        'SELECT custom FROM table_without_p_k WHERE some_float < 10',
        variables: [],
        readsFrom: {
          tableWithoutPK,
        }).map((QueryRow row) => $TableWithoutPKTable.$convertercustom
        .fromSql(row.read<String>('custom')));
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        categories,
        todosTable,
        users,
        sharedTodos,
        tableWithoutPK,
        pureDefaults,
        withCustomType,
        tableWithEveryColumnType,
        department,
        product,
        store,
        listing,
        categoryTodoCountView,
        todoWithCategoryView
      ];
}

typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  Value<RowId> id,
  required String description,
  Value<CategoryPriority> priority,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<RowId> id,
  Value<String> description,
  Value<CategoryPriority> priority,
});

final class $$CategoriesTableReferences
    extends BaseReferences<_$TodoDb, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TodosTableTable, List<TodoEntry>> _todosTable(
          _$TodoDb db) =>
      MultiTypedResultKey.fromTable(db.todosTable,
          aliasName:
              $_aliasNameGenerator(db.categories.id, db.todosTable.category));

  $$TodosTableTableProcessedTableManager get todos {
    final manager = $$TodosTableTableTableManager($_db, $_db.todosTable)
        .filter((f) => f.category.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_todosTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$TodoDb, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<RowId, RowId, int> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<CategoryPriority, CategoryPriority, int>
      get priority => $composableBuilder(
          column: $table.priority,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get descriptionInUpperCase => $composableBuilder(
      column: $table.descriptionInUpperCase,
      builder: (column) => ColumnFilters(column));

  Expression<bool> todos(
      Expression<bool> Function($$TodosTableTableFilterComposer f) f) {
    final $$TodosTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.todosTable,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodosTableTableFilterComposer(
              $db: $db,
              $table: $db.todosTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$TodoDb, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priority => $composableBuilder(
      column: $table.priority, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionInUpperCase => $composableBuilder(
      column: $table.descriptionInUpperCase,
      builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$TodoDb, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<RowId, int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<CategoryPriority, int> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<String> get descriptionInUpperCase => $composableBuilder(
      column: $table.descriptionInUpperCase, builder: (column) => column);

  Expression<T> todos<T extends Object>(
      Expression<T> Function($$TodosTableTableAnnotationComposer a) f) {
    final $$TodosTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.todosTable,
        getReferencedColumn: (t) => t.category,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodosTableTableAnnotationComposer(
              $db: $db,
              $table: $db.todosTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$TodoDb,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    PrefetchHooks Function({bool todos})> {
  $$CategoriesTableTableManager(_$TodoDb db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<CategoryPriority> priority = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            description: description,
            priority: priority,
          ),
          createCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            required String description,
            Value<CategoryPriority> priority = const Value.absent(),
          }) =>
              CategoriesCompanion.insert(
            id: id,
            description: description,
            priority: priority,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CategoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({todos = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (todos) db.todosTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (todos)
                    await $_getPrefetchedData<Category, $CategoriesTable,
                            TodoEntry>(
                        currentTable: table,
                        referencedTable:
                            $$CategoriesTableReferences._todosTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CategoriesTableReferences(db, table, p0).todos,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.category == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    PrefetchHooks Function({bool todos})>;
typedef $$TodosTableTableCreateCompanionBuilder = TodosTableCompanion Function({
  Value<RowId> id,
  Value<String?> title,
  required String content,
  Value<DateTime?> targetDate,
  Value<RowId?> category,
  Value<TodoStatus?> status,
});
typedef $$TodosTableTableUpdateCompanionBuilder = TodosTableCompanion Function({
  Value<RowId> id,
  Value<String?> title,
  Value<String> content,
  Value<DateTime?> targetDate,
  Value<RowId?> category,
  Value<TodoStatus?> status,
});

final class $$TodosTableTableReferences
    extends BaseReferences<_$TodoDb, $TodosTableTable, TodoEntry> {
  $$TodosTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoriesTable _categoryTable(_$TodoDb db) =>
      db.categories.createAlias(
          $_aliasNameGenerator(db.todosTable.category, db.categories.id));

  $$CategoriesTableProcessedTableManager? get category {
    final $_column = $_itemColumn<int>('category');
    if ($_column == null) return null;
    final manager = $$CategoriesTableTableManager($_db, $_db.categories)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TodosTableTableFilterComposer
    extends Composer<_$TodoDb, $TodosTableTable> {
  $$TodosTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<RowId, RowId, int> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get targetDate => $composableBuilder(
      column: $table.targetDate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TodoStatus?, TodoStatus, String> get status =>
      $composableBuilder(
          column: $table.status,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$CategoriesTableFilterComposer get category {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableFilterComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodosTableTableOrderingComposer
    extends Composer<_$TodoDb, $TodosTableTable> {
  $$TodosTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get targetDate => $composableBuilder(
      column: $table.targetDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  $$CategoriesTableOrderingComposer get category {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableOrderingComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodosTableTableAnnotationComposer
    extends Composer<_$TodoDb, $TodosTableTable> {
  $$TodosTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<RowId, int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<DateTime> get targetDate => $composableBuilder(
      column: $table.targetDate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TodoStatus?, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  $$CategoriesTableAnnotationComposer get category {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.category,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableAnnotationComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodosTableTableTableManager extends RootTableManager<
    _$TodoDb,
    $TodosTableTable,
    TodoEntry,
    $$TodosTableTableFilterComposer,
    $$TodosTableTableOrderingComposer,
    $$TodosTableTableAnnotationComposer,
    $$TodosTableTableCreateCompanionBuilder,
    $$TodosTableTableUpdateCompanionBuilder,
    (TodoEntry, $$TodosTableTableReferences),
    TodoEntry,
    PrefetchHooks Function({bool category})> {
  $$TodosTableTableTableManager(_$TodoDb db, $TodosTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodosTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodosTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodosTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<DateTime?> targetDate = const Value.absent(),
            Value<RowId?> category = const Value.absent(),
            Value<TodoStatus?> status = const Value.absent(),
          }) =>
              TodosTableCompanion(
            id: id,
            title: title,
            content: content,
            targetDate: targetDate,
            category: category,
            status: status,
          ),
          createCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<String?> title = const Value.absent(),
            required String content,
            Value<DateTime?> targetDate = const Value.absent(),
            Value<RowId?> category = const Value.absent(),
            Value<TodoStatus?> status = const Value.absent(),
          }) =>
              TodosTableCompanion.insert(
            id: id,
            title: title,
            content: content,
            targetDate: targetDate,
            category: category,
            status: status,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TodosTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({category = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (category) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.category,
                    referencedTable:
                        $$TodosTableTableReferences._categoryTable(db),
                    referencedColumn:
                        $$TodosTableTableReferences._categoryTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TodosTableTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $TodosTableTable,
    TodoEntry,
    $$TodosTableTableFilterComposer,
    $$TodosTableTableOrderingComposer,
    $$TodosTableTableAnnotationComposer,
    $$TodosTableTableCreateCompanionBuilder,
    $$TodosTableTableUpdateCompanionBuilder,
    (TodoEntry, $$TodosTableTableReferences),
    TodoEntry,
    PrefetchHooks Function({bool category})>;
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<RowId> id,
  required String name,
  Value<bool> isAwesome,
  required Uint8List profilePicture,
  Value<DateTime> creationTime,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<RowId> id,
  Value<String> name,
  Value<bool> isAwesome,
  Value<Uint8List> profilePicture,
  Value<DateTime> creationTime,
});

class $$UsersTableFilterComposer extends Composer<_$TodoDb, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<RowId, RowId, int> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isAwesome => $composableBuilder(
      column: $table.isAwesome, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => ColumnFilters(column));
}

class $$UsersTableOrderingComposer extends Composer<_$TodoDb, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isAwesome => $composableBuilder(
      column: $table.isAwesome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime,
      builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer extends Composer<_$TodoDb, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<RowId, int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get isAwesome =>
      $composableBuilder(column: $table.isAwesome, builder: (column) => column);

  GeneratedColumn<Uint8List> get profilePicture => $composableBuilder(
      column: $table.profilePicture, builder: (column) => column);

  GeneratedColumn<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$TodoDb,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$TodoDb, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$TodoDb db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> isAwesome = const Value.absent(),
            Value<Uint8List> profilePicture = const Value.absent(),
            Value<DateTime> creationTime = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            name: name,
            isAwesome: isAwesome,
            profilePicture: profilePicture,
            creationTime: creationTime,
          ),
          createCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            required String name,
            Value<bool> isAwesome = const Value.absent(),
            required Uint8List profilePicture,
            Value<DateTime> creationTime = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            name: name,
            isAwesome: isAwesome,
            profilePicture: profilePicture,
            creationTime: creationTime,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$TodoDb, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$SharedTodosTableCreateCompanionBuilder = SharedTodosCompanion
    Function({
  required int todo,
  required int user,
  Value<int> rowid,
});
typedef $$SharedTodosTableUpdateCompanionBuilder = SharedTodosCompanion
    Function({
  Value<int> todo,
  Value<int> user,
  Value<int> rowid,
});

class $$SharedTodosTableFilterComposer
    extends Composer<_$TodoDb, $SharedTodosTable> {
  $$SharedTodosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get todo => $composableBuilder(
      column: $table.todo, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));
}

class $$SharedTodosTableOrderingComposer
    extends Composer<_$TodoDb, $SharedTodosTable> {
  $$SharedTodosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get todo => $composableBuilder(
      column: $table.todo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));
}

class $$SharedTodosTableAnnotationComposer
    extends Composer<_$TodoDb, $SharedTodosTable> {
  $$SharedTodosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get todo =>
      $composableBuilder(column: $table.todo, builder: (column) => column);

  GeneratedColumn<int> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);
}

class $$SharedTodosTableTableManager extends RootTableManager<
    _$TodoDb,
    $SharedTodosTable,
    SharedTodo,
    $$SharedTodosTableFilterComposer,
    $$SharedTodosTableOrderingComposer,
    $$SharedTodosTableAnnotationComposer,
    $$SharedTodosTableCreateCompanionBuilder,
    $$SharedTodosTableUpdateCompanionBuilder,
    (SharedTodo, BaseReferences<_$TodoDb, $SharedTodosTable, SharedTodo>),
    SharedTodo,
    PrefetchHooks Function()> {
  $$SharedTodosTableTableManager(_$TodoDb db, $SharedTodosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SharedTodosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SharedTodosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SharedTodosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> todo = const Value.absent(),
            Value<int> user = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SharedTodosCompanion(
            todo: todo,
            user: user,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int todo,
            required int user,
            Value<int> rowid = const Value.absent(),
          }) =>
              SharedTodosCompanion.insert(
            todo: todo,
            user: user,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SharedTodosTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $SharedTodosTable,
    SharedTodo,
    $$SharedTodosTableFilterComposer,
    $$SharedTodosTableOrderingComposer,
    $$SharedTodosTableAnnotationComposer,
    $$SharedTodosTableCreateCompanionBuilder,
    $$SharedTodosTableUpdateCompanionBuilder,
    (SharedTodo, BaseReferences<_$TodoDb, $SharedTodosTable, SharedTodo>),
    SharedTodo,
    PrefetchHooks Function()>;
typedef $$TableWithoutPKTableCreateCompanionBuilder = TableWithoutPKCompanion
    Function({
  required int notReallyAnId,
  required double someFloat,
  Value<BigInt?> webSafeInt,
  Value<MyCustomObject> custom,
  Value<int> rowid,
});
typedef $$TableWithoutPKTableUpdateCompanionBuilder = TableWithoutPKCompanion
    Function({
  Value<int> notReallyAnId,
  Value<double> someFloat,
  Value<BigInt?> webSafeInt,
  Value<MyCustomObject> custom,
  Value<int> rowid,
});

class $$TableWithoutPKTableFilterComposer
    extends Composer<_$TodoDb, $TableWithoutPKTable> {
  $$TableWithoutPKTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get notReallyAnId => $composableBuilder(
      column: $table.notReallyAnId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get someFloat => $composableBuilder(
      column: $table.someFloat, builder: (column) => ColumnFilters(column));

  ColumnFilters<BigInt> get webSafeInt => $composableBuilder(
      column: $table.webSafeInt, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MyCustomObject, MyCustomObject, String>
      get custom => $composableBuilder(
          column: $table.custom,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$TableWithoutPKTableOrderingComposer
    extends Composer<_$TodoDb, $TableWithoutPKTable> {
  $$TableWithoutPKTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get notReallyAnId => $composableBuilder(
      column: $table.notReallyAnId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get someFloat => $composableBuilder(
      column: $table.someFloat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<BigInt> get webSafeInt => $composableBuilder(
      column: $table.webSafeInt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get custom => $composableBuilder(
      column: $table.custom, builder: (column) => ColumnOrderings(column));
}

class $$TableWithoutPKTableAnnotationComposer
    extends Composer<_$TodoDb, $TableWithoutPKTable> {
  $$TableWithoutPKTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get notReallyAnId => $composableBuilder(
      column: $table.notReallyAnId, builder: (column) => column);

  GeneratedColumn<double> get someFloat =>
      $composableBuilder(column: $table.someFloat, builder: (column) => column);

  GeneratedColumn<BigInt> get webSafeInt => $composableBuilder(
      column: $table.webSafeInt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MyCustomObject, String> get custom =>
      $composableBuilder(column: $table.custom, builder: (column) => column);
}

class $$TableWithoutPKTableTableManager extends RootTableManager<
    _$TodoDb,
    $TableWithoutPKTable,
    CustomRowClass,
    $$TableWithoutPKTableFilterComposer,
    $$TableWithoutPKTableOrderingComposer,
    $$TableWithoutPKTableAnnotationComposer,
    $$TableWithoutPKTableCreateCompanionBuilder,
    $$TableWithoutPKTableUpdateCompanionBuilder,
    (
      CustomRowClass,
      BaseReferences<_$TodoDb, $TableWithoutPKTable, CustomRowClass>
    ),
    CustomRowClass,
    PrefetchHooks Function()> {
  $$TableWithoutPKTableTableManager(_$TodoDb db, $TableWithoutPKTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TableWithoutPKTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TableWithoutPKTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TableWithoutPKTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> notReallyAnId = const Value.absent(),
            Value<double> someFloat = const Value.absent(),
            Value<BigInt?> webSafeInt = const Value.absent(),
            Value<MyCustomObject> custom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TableWithoutPKCompanion(
            notReallyAnId: notReallyAnId,
            someFloat: someFloat,
            webSafeInt: webSafeInt,
            custom: custom,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int notReallyAnId,
            required double someFloat,
            Value<BigInt?> webSafeInt = const Value.absent(),
            Value<MyCustomObject> custom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TableWithoutPKCompanion.insert(
            notReallyAnId: notReallyAnId,
            someFloat: someFloat,
            webSafeInt: webSafeInt,
            custom: custom,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TableWithoutPKTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $TableWithoutPKTable,
    CustomRowClass,
    $$TableWithoutPKTableFilterComposer,
    $$TableWithoutPKTableOrderingComposer,
    $$TableWithoutPKTableAnnotationComposer,
    $$TableWithoutPKTableCreateCompanionBuilder,
    $$TableWithoutPKTableUpdateCompanionBuilder,
    (
      CustomRowClass,
      BaseReferences<_$TodoDb, $TableWithoutPKTable, CustomRowClass>
    ),
    CustomRowClass,
    PrefetchHooks Function()>;
typedef $$PureDefaultsTableCreateCompanionBuilder = PureDefaultsCompanion
    Function({
  Value<MyCustomObject?> txt,
  Value<int> rowid,
});
typedef $$PureDefaultsTableUpdateCompanionBuilder = PureDefaultsCompanion
    Function({
  Value<MyCustomObject?> txt,
  Value<int> rowid,
});

class $$PureDefaultsTableFilterComposer
    extends Composer<_$TodoDb, $PureDefaultsTable> {
  $$PureDefaultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<MyCustomObject?, MyCustomObject, String>
      get txt => $composableBuilder(
          column: $table.txt,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$PureDefaultsTableOrderingComposer
    extends Composer<_$TodoDb, $PureDefaultsTable> {
  $$PureDefaultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get txt => $composableBuilder(
      column: $table.txt, builder: (column) => ColumnOrderings(column));
}

class $$PureDefaultsTableAnnotationComposer
    extends Composer<_$TodoDb, $PureDefaultsTable> {
  $$PureDefaultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<MyCustomObject?, String> get txt =>
      $composableBuilder(column: $table.txt, builder: (column) => column);
}

class $$PureDefaultsTableTableManager extends RootTableManager<
    _$TodoDb,
    $PureDefaultsTable,
    PureDefault,
    $$PureDefaultsTableFilterComposer,
    $$PureDefaultsTableOrderingComposer,
    $$PureDefaultsTableAnnotationComposer,
    $$PureDefaultsTableCreateCompanionBuilder,
    $$PureDefaultsTableUpdateCompanionBuilder,
    (PureDefault, BaseReferences<_$TodoDb, $PureDefaultsTable, PureDefault>),
    PureDefault,
    PrefetchHooks Function()> {
  $$PureDefaultsTableTableManager(_$TodoDb db, $PureDefaultsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PureDefaultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PureDefaultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PureDefaultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<MyCustomObject?> txt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PureDefaultsCompanion(
            txt: txt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<MyCustomObject?> txt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PureDefaultsCompanion.insert(
            txt: txt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PureDefaultsTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $PureDefaultsTable,
    PureDefault,
    $$PureDefaultsTableFilterComposer,
    $$PureDefaultsTableOrderingComposer,
    $$PureDefaultsTableAnnotationComposer,
    $$PureDefaultsTableCreateCompanionBuilder,
    $$PureDefaultsTableUpdateCompanionBuilder,
    (PureDefault, BaseReferences<_$TodoDb, $PureDefaultsTable, PureDefault>),
    PureDefault,
    PrefetchHooks Function()>;
typedef $$WithCustomTypeTableCreateCompanionBuilder = WithCustomTypeCompanion
    Function({
  required UuidValue id,
  Value<int> rowid,
});
typedef $$WithCustomTypeTableUpdateCompanionBuilder = WithCustomTypeCompanion
    Function({
  Value<UuidValue> id,
  Value<int> rowid,
});

class $$WithCustomTypeTableFilterComposer
    extends Composer<_$TodoDb, $WithCustomTypeTable> {
  $$WithCustomTypeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));
}

class $$WithCustomTypeTableOrderingComposer
    extends Composer<_$TodoDb, $WithCustomTypeTable> {
  $$WithCustomTypeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<UuidValue> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));
}

class $$WithCustomTypeTableAnnotationComposer
    extends Composer<_$TodoDb, $WithCustomTypeTable> {
  $$WithCustomTypeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<UuidValue> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);
}

class $$WithCustomTypeTableTableManager extends RootTableManager<
    _$TodoDb,
    $WithCustomTypeTable,
    WithCustomTypeData,
    $$WithCustomTypeTableFilterComposer,
    $$WithCustomTypeTableOrderingComposer,
    $$WithCustomTypeTableAnnotationComposer,
    $$WithCustomTypeTableCreateCompanionBuilder,
    $$WithCustomTypeTableUpdateCompanionBuilder,
    (
      WithCustomTypeData,
      BaseReferences<_$TodoDb, $WithCustomTypeTable, WithCustomTypeData>
    ),
    WithCustomTypeData,
    PrefetchHooks Function()> {
  $$WithCustomTypeTableTableManager(_$TodoDb db, $WithCustomTypeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WithCustomTypeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WithCustomTypeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WithCustomTypeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<UuidValue> id = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WithCustomTypeCompanion(
            id: id,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required UuidValue id,
            Value<int> rowid = const Value.absent(),
          }) =>
              WithCustomTypeCompanion.insert(
            id: id,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$WithCustomTypeTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $WithCustomTypeTable,
    WithCustomTypeData,
    $$WithCustomTypeTableFilterComposer,
    $$WithCustomTypeTableOrderingComposer,
    $$WithCustomTypeTableAnnotationComposer,
    $$WithCustomTypeTableCreateCompanionBuilder,
    $$WithCustomTypeTableUpdateCompanionBuilder,
    (
      WithCustomTypeData,
      BaseReferences<_$TodoDb, $WithCustomTypeTable, WithCustomTypeData>
    ),
    WithCustomTypeData,
    PrefetchHooks Function()>;
typedef $$TableWithEveryColumnTypeTableCreateCompanionBuilder
    = TableWithEveryColumnTypeCompanion Function({
  Value<RowId> id,
  Value<bool?> aBool,
  Value<DateTime?> aDateTime,
  Value<String?> aText,
  Value<int?> anInt,
  Value<BigInt?> anInt64,
  Value<double?> aReal,
  Value<Uint8List?> aBlob,
  Value<TodoStatus?> anIntEnum,
  Value<MyCustomObject?> aTextWithConverter,
});
typedef $$TableWithEveryColumnTypeTableUpdateCompanionBuilder
    = TableWithEveryColumnTypeCompanion Function({
  Value<RowId> id,
  Value<bool?> aBool,
  Value<DateTime?> aDateTime,
  Value<String?> aText,
  Value<int?> anInt,
  Value<BigInt?> anInt64,
  Value<double?> aReal,
  Value<Uint8List?> aBlob,
  Value<TodoStatus?> anIntEnum,
  Value<MyCustomObject?> aTextWithConverter,
});

class $$TableWithEveryColumnTypeTableFilterComposer
    extends Composer<_$TodoDb, $TableWithEveryColumnTypeTable> {
  $$TableWithEveryColumnTypeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnWithTypeConverterFilters<RowId, RowId, int> get id =>
      $composableBuilder(
          column: $table.id,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get aBool => $composableBuilder(
      column: $table.aBool, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get aDateTime => $composableBuilder(
      column: $table.aDateTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get aText => $composableBuilder(
      column: $table.aText, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get anInt => $composableBuilder(
      column: $table.anInt, builder: (column) => ColumnFilters(column));

  ColumnFilters<BigInt> get anInt64 => $composableBuilder(
      column: $table.anInt64, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get aReal => $composableBuilder(
      column: $table.aReal, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get aBlob => $composableBuilder(
      column: $table.aBlob, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TodoStatus?, TodoStatus, int> get anIntEnum =>
      $composableBuilder(
          column: $table.anIntEnum,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<MyCustomObject?, MyCustomObject, String>
      get aTextWithConverter => $composableBuilder(
          column: $table.aTextWithConverter,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$TableWithEveryColumnTypeTableOrderingComposer
    extends Composer<_$TodoDb, $TableWithEveryColumnTypeTable> {
  $$TableWithEveryColumnTypeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get aBool => $composableBuilder(
      column: $table.aBool, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get aDateTime => $composableBuilder(
      column: $table.aDateTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get aText => $composableBuilder(
      column: $table.aText, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get anInt => $composableBuilder(
      column: $table.anInt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<BigInt> get anInt64 => $composableBuilder(
      column: $table.anInt64, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get aReal => $composableBuilder(
      column: $table.aReal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get aBlob => $composableBuilder(
      column: $table.aBlob, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get anIntEnum => $composableBuilder(
      column: $table.anIntEnum, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get aTextWithConverter => $composableBuilder(
      column: $table.aTextWithConverter,
      builder: (column) => ColumnOrderings(column));
}

class $$TableWithEveryColumnTypeTableAnnotationComposer
    extends Composer<_$TodoDb, $TableWithEveryColumnTypeTable> {
  $$TableWithEveryColumnTypeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumnWithTypeConverter<RowId, int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get aBool =>
      $composableBuilder(column: $table.aBool, builder: (column) => column);

  GeneratedColumn<DateTime> get aDateTime =>
      $composableBuilder(column: $table.aDateTime, builder: (column) => column);

  GeneratedColumn<String> get aText =>
      $composableBuilder(column: $table.aText, builder: (column) => column);

  GeneratedColumn<int> get anInt =>
      $composableBuilder(column: $table.anInt, builder: (column) => column);

  GeneratedColumn<BigInt> get anInt64 =>
      $composableBuilder(column: $table.anInt64, builder: (column) => column);

  GeneratedColumn<double> get aReal =>
      $composableBuilder(column: $table.aReal, builder: (column) => column);

  GeneratedColumn<Uint8List> get aBlob =>
      $composableBuilder(column: $table.aBlob, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TodoStatus?, int> get anIntEnum =>
      $composableBuilder(column: $table.anIntEnum, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MyCustomObject?, String>
      get aTextWithConverter => $composableBuilder(
          column: $table.aTextWithConverter, builder: (column) => column);
}

class $$TableWithEveryColumnTypeTableTableManager extends RootTableManager<
    _$TodoDb,
    $TableWithEveryColumnTypeTable,
    TableWithEveryColumnTypeData,
    $$TableWithEveryColumnTypeTableFilterComposer,
    $$TableWithEveryColumnTypeTableOrderingComposer,
    $$TableWithEveryColumnTypeTableAnnotationComposer,
    $$TableWithEveryColumnTypeTableCreateCompanionBuilder,
    $$TableWithEveryColumnTypeTableUpdateCompanionBuilder,
    (
      TableWithEveryColumnTypeData,
      BaseReferences<_$TodoDb, $TableWithEveryColumnTypeTable,
          TableWithEveryColumnTypeData>
    ),
    TableWithEveryColumnTypeData,
    PrefetchHooks Function()> {
  $$TableWithEveryColumnTypeTableTableManager(
      _$TodoDb db, $TableWithEveryColumnTypeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TableWithEveryColumnTypeTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$TableWithEveryColumnTypeTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TableWithEveryColumnTypeTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<bool?> aBool = const Value.absent(),
            Value<DateTime?> aDateTime = const Value.absent(),
            Value<String?> aText = const Value.absent(),
            Value<int?> anInt = const Value.absent(),
            Value<BigInt?> anInt64 = const Value.absent(),
            Value<double?> aReal = const Value.absent(),
            Value<Uint8List?> aBlob = const Value.absent(),
            Value<TodoStatus?> anIntEnum = const Value.absent(),
            Value<MyCustomObject?> aTextWithConverter = const Value.absent(),
          }) =>
              TableWithEveryColumnTypeCompanion(
            id: id,
            aBool: aBool,
            aDateTime: aDateTime,
            aText: aText,
            anInt: anInt,
            anInt64: anInt64,
            aReal: aReal,
            aBlob: aBlob,
            anIntEnum: anIntEnum,
            aTextWithConverter: aTextWithConverter,
          ),
          createCompanionCallback: ({
            Value<RowId> id = const Value.absent(),
            Value<bool?> aBool = const Value.absent(),
            Value<DateTime?> aDateTime = const Value.absent(),
            Value<String?> aText = const Value.absent(),
            Value<int?> anInt = const Value.absent(),
            Value<BigInt?> anInt64 = const Value.absent(),
            Value<double?> aReal = const Value.absent(),
            Value<Uint8List?> aBlob = const Value.absent(),
            Value<TodoStatus?> anIntEnum = const Value.absent(),
            Value<MyCustomObject?> aTextWithConverter = const Value.absent(),
          }) =>
              TableWithEveryColumnTypeCompanion.insert(
            id: id,
            aBool: aBool,
            aDateTime: aDateTime,
            aText: aText,
            anInt: anInt,
            anInt64: anInt64,
            aReal: aReal,
            aBlob: aBlob,
            anIntEnum: anIntEnum,
            aTextWithConverter: aTextWithConverter,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TableWithEveryColumnTypeTableProcessedTableManager
    = ProcessedTableManager<
        _$TodoDb,
        $TableWithEveryColumnTypeTable,
        TableWithEveryColumnTypeData,
        $$TableWithEveryColumnTypeTableFilterComposer,
        $$TableWithEveryColumnTypeTableOrderingComposer,
        $$TableWithEveryColumnTypeTableAnnotationComposer,
        $$TableWithEveryColumnTypeTableCreateCompanionBuilder,
        $$TableWithEveryColumnTypeTableUpdateCompanionBuilder,
        (
          TableWithEveryColumnTypeData,
          BaseReferences<_$TodoDb, $TableWithEveryColumnTypeTable,
              TableWithEveryColumnTypeData>
        ),
        TableWithEveryColumnTypeData,
        PrefetchHooks Function()>;
typedef $$DepartmentTableCreateCompanionBuilder = DepartmentCompanion Function({
  Value<int> id,
  Value<String?> name,
});
typedef $$DepartmentTableUpdateCompanionBuilder = DepartmentCompanion Function({
  Value<int> id,
  Value<String?> name,
});

final class $$DepartmentTableReferences
    extends BaseReferences<_$TodoDb, $DepartmentTable, DepartmentData> {
  $$DepartmentTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProductTable, List<ProductData>>
      _productRefsTable(_$TodoDb db) => MultiTypedResultKey.fromTable(
          db.product,
          aliasName:
              $_aliasNameGenerator(db.department.id, db.product.department));

  $$ProductTableProcessedTableManager get productRefs {
    final manager = $$ProductTableTableManager($_db, $_db.product)
        .filter((f) => f.department.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_productRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DepartmentTableFilterComposer
    extends Composer<_$TodoDb, $DepartmentTable> {
  $$DepartmentTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> productRefs(
      Expression<bool> Function($$ProductTableFilterComposer f) f) {
    final $$ProductTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.product,
        getReferencedColumn: (t) => t.department,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTableFilterComposer(
              $db: $db,
              $table: $db.product,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DepartmentTableOrderingComposer
    extends Composer<_$TodoDb, $DepartmentTable> {
  $$DepartmentTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$DepartmentTableAnnotationComposer
    extends Composer<_$TodoDb, $DepartmentTable> {
  $$DepartmentTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> productRefs<T extends Object>(
      Expression<T> Function($$ProductTableAnnotationComposer a) f) {
    final $$ProductTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.product,
        getReferencedColumn: (t) => t.department,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTableAnnotationComposer(
              $db: $db,
              $table: $db.product,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DepartmentTableTableManager extends RootTableManager<
    _$TodoDb,
    $DepartmentTable,
    DepartmentData,
    $$DepartmentTableFilterComposer,
    $$DepartmentTableOrderingComposer,
    $$DepartmentTableAnnotationComposer,
    $$DepartmentTableCreateCompanionBuilder,
    $$DepartmentTableUpdateCompanionBuilder,
    (DepartmentData, $$DepartmentTableReferences),
    DepartmentData,
    PrefetchHooks Function({bool productRefs})> {
  $$DepartmentTableTableManager(_$TodoDb db, $DepartmentTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DepartmentTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DepartmentTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DepartmentTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              DepartmentCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              DepartmentCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DepartmentTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({productRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productRefs) db.product],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productRefs)
                    await $_getPrefetchedData<DepartmentData, $DepartmentTable,
                            ProductData>(
                        currentTable: table,
                        referencedTable:
                            $$DepartmentTableReferences._productRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DepartmentTableReferences(db, table, p0)
                                .productRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.department == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DepartmentTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $DepartmentTable,
    DepartmentData,
    $$DepartmentTableFilterComposer,
    $$DepartmentTableOrderingComposer,
    $$DepartmentTableAnnotationComposer,
    $$DepartmentTableCreateCompanionBuilder,
    $$DepartmentTableUpdateCompanionBuilder,
    (DepartmentData, $$DepartmentTableReferences),
    DepartmentData,
    PrefetchHooks Function({bool productRefs})>;
typedef $$ProductTableCreateCompanionBuilder = ProductCompanion Function({
  required String sku,
  Value<String?> name,
  Value<int?> department,
  Value<int> rowid,
});
typedef $$ProductTableUpdateCompanionBuilder = ProductCompanion Function({
  Value<String> sku,
  Value<String?> name,
  Value<int?> department,
  Value<int> rowid,
});

final class $$ProductTableReferences
    extends BaseReferences<_$TodoDb, $ProductTable, ProductData> {
  $$ProductTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DepartmentTable _departmentTable(_$TodoDb db) =>
      db.department.createAlias(
          $_aliasNameGenerator(db.product.department, db.department.id));

  $$DepartmentTableProcessedTableManager? get department {
    final $_column = $_itemColumn<int>('department');
    if ($_column == null) return null;
    final manager = $$DepartmentTableTableManager($_db, $_db.department)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_departmentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ListingTable, List<ListingData>> _listingsTable(
          _$TodoDb db) =>
      MultiTypedResultKey.fromTable(db.listing,
          aliasName: $_aliasNameGenerator(db.product.sku, db.listing.product));

  $$ListingTableProcessedTableManager get listings {
    final manager = $$ListingTableTableManager($_db, $_db.listing)
        .filter((f) => f.product.sku.sqlEquals($_itemColumn<String>('sku')!));

    final cache = $_typedResult.readTableOrNull(_listingsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProductTableFilterComposer extends Composer<_$TodoDb, $ProductTable> {
  $$ProductTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get sku => $composableBuilder(
      column: $table.sku, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  $$DepartmentTableFilterComposer get department {
    final $$DepartmentTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.department,
        referencedTable: $db.department,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTableFilterComposer(
              $db: $db,
              $table: $db.department,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> listings(
      Expression<bool> Function($$ListingTableFilterComposer f) f) {
    final $$ListingTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sku,
        referencedTable: $db.listing,
        getReferencedColumn: (t) => t.product,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ListingTableFilterComposer(
              $db: $db,
              $table: $db.listing,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProductTableOrderingComposer extends Composer<_$TodoDb, $ProductTable> {
  $$ProductTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get sku => $composableBuilder(
      column: $table.sku, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  $$DepartmentTableOrderingComposer get department {
    final $$DepartmentTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.department,
        referencedTable: $db.department,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTableOrderingComposer(
              $db: $db,
              $table: $db.department,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductTableAnnotationComposer
    extends Composer<_$TodoDb, $ProductTable> {
  $$ProductTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get sku =>
      $composableBuilder(column: $table.sku, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  $$DepartmentTableAnnotationComposer get department {
    final $$DepartmentTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.department,
        referencedTable: $db.department,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DepartmentTableAnnotationComposer(
              $db: $db,
              $table: $db.department,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> listings<T extends Object>(
      Expression<T> Function($$ListingTableAnnotationComposer a) f) {
    final $$ListingTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sku,
        referencedTable: $db.listing,
        getReferencedColumn: (t) => t.product,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ListingTableAnnotationComposer(
              $db: $db,
              $table: $db.listing,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProductTableTableManager extends RootTableManager<
    _$TodoDb,
    $ProductTable,
    ProductData,
    $$ProductTableFilterComposer,
    $$ProductTableOrderingComposer,
    $$ProductTableAnnotationComposer,
    $$ProductTableCreateCompanionBuilder,
    $$ProductTableUpdateCompanionBuilder,
    (ProductData, $$ProductTableReferences),
    ProductData,
    PrefetchHooks Function({bool department, bool listings})> {
  $$ProductTableTableManager(_$TodoDb db, $ProductTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> sku = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<int?> department = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductCompanion(
            sku: sku,
            name: name,
            department: department,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String sku,
            Value<String?> name = const Value.absent(),
            Value<int?> department = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductCompanion.insert(
            sku: sku,
            name: name,
            department: department,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ProductTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({department = false, listings = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (listings) db.listing],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (department) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.department,
                    referencedTable:
                        $$ProductTableReferences._departmentTable(db),
                    referencedColumn:
                        $$ProductTableReferences._departmentTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (listings)
                    await $_getPrefetchedData<ProductData, $ProductTable,
                            ListingData>(
                        currentTable: table,
                        referencedTable:
                            $$ProductTableReferences._listingsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProductTableReferences(db, table, p0).listings,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.product == item.sku),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProductTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $ProductTable,
    ProductData,
    $$ProductTableFilterComposer,
    $$ProductTableOrderingComposer,
    $$ProductTableAnnotationComposer,
    $$ProductTableCreateCompanionBuilder,
    $$ProductTableUpdateCompanionBuilder,
    (ProductData, $$ProductTableReferences),
    ProductData,
    PrefetchHooks Function({bool department, bool listings})>;
typedef $$StoreTableCreateCompanionBuilder = StoreCompanion Function({
  Value<int> id,
  Value<String?> name,
});
typedef $$StoreTableUpdateCompanionBuilder = StoreCompanion Function({
  Value<int> id,
  Value<String?> name,
});

final class $$StoreTableReferences
    extends BaseReferences<_$TodoDb, $StoreTable, StoreData> {
  $$StoreTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ListingTable, List<ListingData>> _listingsTable(
          _$TodoDb db) =>
      MultiTypedResultKey.fromTable(db.listing,
          aliasName: $_aliasNameGenerator(db.store.id, db.listing.store));

  $$ListingTableProcessedTableManager get listings {
    final manager = $$ListingTableTableManager($_db, $_db.listing)
        .filter((f) => f.store.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_listingsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$StoreTableFilterComposer extends Composer<_$TodoDb, $StoreTable> {
  $$StoreTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> listings(
      Expression<bool> Function($$ListingTableFilterComposer f) f) {
    final $$ListingTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.listing,
        getReferencedColumn: (t) => t.store,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ListingTableFilterComposer(
              $db: $db,
              $table: $db.listing,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StoreTableOrderingComposer extends Composer<_$TodoDb, $StoreTable> {
  $$StoreTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$StoreTableAnnotationComposer extends Composer<_$TodoDb, $StoreTable> {
  $$StoreTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> listings<T extends Object>(
      Expression<T> Function($$ListingTableAnnotationComposer a) f) {
    final $$ListingTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.listing,
        getReferencedColumn: (t) => t.store,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ListingTableAnnotationComposer(
              $db: $db,
              $table: $db.listing,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$StoreTableTableManager extends RootTableManager<
    _$TodoDb,
    $StoreTable,
    StoreData,
    $$StoreTableFilterComposer,
    $$StoreTableOrderingComposer,
    $$StoreTableAnnotationComposer,
    $$StoreTableCreateCompanionBuilder,
    $$StoreTableUpdateCompanionBuilder,
    (StoreData, $$StoreTableReferences),
    StoreData,
    PrefetchHooks Function({bool listings})> {
  $$StoreTableTableManager(_$TodoDb db, $StoreTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StoreTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StoreTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StoreTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              StoreCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              StoreCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$StoreTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({listings = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (listings) db.listing],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (listings)
                    await $_getPrefetchedData<StoreData, $StoreTable,
                            ListingData>(
                        currentTable: table,
                        referencedTable:
                            $$StoreTableReferences._listingsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$StoreTableReferences(db, table, p0).listings,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.store == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$StoreTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $StoreTable,
    StoreData,
    $$StoreTableFilterComposer,
    $$StoreTableOrderingComposer,
    $$StoreTableAnnotationComposer,
    $$StoreTableCreateCompanionBuilder,
    $$StoreTableUpdateCompanionBuilder,
    (StoreData, $$StoreTableReferences),
    StoreData,
    PrefetchHooks Function({bool listings})>;
typedef $$ListingTableCreateCompanionBuilder = ListingCompanion Function({
  Value<int> id,
  required String product,
  Value<int?> store,
  Value<double?> price,
});
typedef $$ListingTableUpdateCompanionBuilder = ListingCompanion Function({
  Value<int> id,
  Value<String> product,
  Value<int?> store,
  Value<double?> price,
});

final class $$ListingTableReferences
    extends BaseReferences<_$TodoDb, $ListingTable, ListingData> {
  $$ListingTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProductTable _productTable(_$TodoDb db) => db.product
      .createAlias($_aliasNameGenerator(db.listing.product, db.product.sku));

  $$ProductTableProcessedTableManager get product {
    final $_column = $_itemColumn<String>('product')!;

    final manager = $$ProductTableTableManager($_db, $_db.product)
        .filter((f) => f.sku.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $StoreTable _storeTable(_$TodoDb db) =>
      db.store.createAlias($_aliasNameGenerator(db.listing.store, db.store.id));

  $$StoreTableProcessedTableManager? get store {
    final $_column = $_itemColumn<int>('store');
    if ($_column == null) return null;
    final manager = $$StoreTableTableManager($_db, $_db.store)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_storeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ListingTableFilterComposer extends Composer<_$TodoDb, $ListingTable> {
  $$ListingTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  $$ProductTableFilterComposer get product {
    final $$ProductTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.product,
        referencedTable: $db.product,
        getReferencedColumn: (t) => t.sku,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTableFilterComposer(
              $db: $db,
              $table: $db.product,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StoreTableFilterComposer get store {
    final $$StoreTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.store,
        referencedTable: $db.store,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoreTableFilterComposer(
              $db: $db,
              $table: $db.store,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ListingTableOrderingComposer extends Composer<_$TodoDb, $ListingTable> {
  $$ListingTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  $$ProductTableOrderingComposer get product {
    final $$ProductTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.product,
        referencedTable: $db.product,
        getReferencedColumn: (t) => t.sku,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTableOrderingComposer(
              $db: $db,
              $table: $db.product,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StoreTableOrderingComposer get store {
    final $$StoreTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.store,
        referencedTable: $db.store,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoreTableOrderingComposer(
              $db: $db,
              $table: $db.store,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ListingTableAnnotationComposer
    extends Composer<_$TodoDb, $ListingTable> {
  $$ListingTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  $$ProductTableAnnotationComposer get product {
    final $$ProductTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.product,
        referencedTable: $db.product,
        getReferencedColumn: (t) => t.sku,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTableAnnotationComposer(
              $db: $db,
              $table: $db.product,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$StoreTableAnnotationComposer get store {
    final $$StoreTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.store,
        referencedTable: $db.store,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$StoreTableAnnotationComposer(
              $db: $db,
              $table: $db.store,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ListingTableTableManager extends RootTableManager<
    _$TodoDb,
    $ListingTable,
    ListingData,
    $$ListingTableFilterComposer,
    $$ListingTableOrderingComposer,
    $$ListingTableAnnotationComposer,
    $$ListingTableCreateCompanionBuilder,
    $$ListingTableUpdateCompanionBuilder,
    (ListingData, $$ListingTableReferences),
    ListingData,
    PrefetchHooks Function({bool product, bool store})> {
  $$ListingTableTableManager(_$TodoDb db, $ListingTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ListingTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ListingTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ListingTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> product = const Value.absent(),
            Value<int?> store = const Value.absent(),
            Value<double?> price = const Value.absent(),
          }) =>
              ListingCompanion(
            id: id,
            product: product,
            store: store,
            price: price,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String product,
            Value<int?> store = const Value.absent(),
            Value<double?> price = const Value.absent(),
          }) =>
              ListingCompanion.insert(
            id: id,
            product: product,
            store: store,
            price: price,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ListingTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({product = false, store = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (product) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.product,
                    referencedTable: $$ListingTableReferences._productTable(db),
                    referencedColumn:
                        $$ListingTableReferences._productTable(db).sku,
                  ) as T;
                }
                if (store) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.store,
                    referencedTable: $$ListingTableReferences._storeTable(db),
                    referencedColumn:
                        $$ListingTableReferences._storeTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ListingTableProcessedTableManager = ProcessedTableManager<
    _$TodoDb,
    $ListingTable,
    ListingData,
    $$ListingTableFilterComposer,
    $$ListingTableOrderingComposer,
    $$ListingTableAnnotationComposer,
    $$ListingTableCreateCompanionBuilder,
    $$ListingTableUpdateCompanionBuilder,
    (ListingData, $$ListingTableReferences),
    ListingData,
    PrefetchHooks Function({bool product, bool store})>;

class $TodoDbManager {
  final _$TodoDb _db;
  $TodoDbManager(this._db);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$TodosTableTableTableManager get todosTable =>
      $$TodosTableTableTableManager(_db, _db.todosTable);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$SharedTodosTableTableManager get sharedTodos =>
      $$SharedTodosTableTableManager(_db, _db.sharedTodos);
  $$TableWithoutPKTableTableManager get tableWithoutPK =>
      $$TableWithoutPKTableTableManager(_db, _db.tableWithoutPK);
  $$PureDefaultsTableTableManager get pureDefaults =>
      $$PureDefaultsTableTableManager(_db, _db.pureDefaults);
  $$WithCustomTypeTableTableManager get withCustomType =>
      $$WithCustomTypeTableTableManager(_db, _db.withCustomType);
  $$TableWithEveryColumnTypeTableTableManager get tableWithEveryColumnType =>
      $$TableWithEveryColumnTypeTableTableManager(
          _db, _db.tableWithEveryColumnType);
  $$DepartmentTableTableManager get department =>
      $$DepartmentTableTableManager(_db, _db.department);
  $$ProductTableTableManager get product =>
      $$ProductTableTableManager(_db, _db.product);
  $$StoreTableTableManager get store =>
      $$StoreTableTableManager(_db, _db.store);
  $$ListingTableTableManager get listing =>
      $$ListingTableTableManager(_db, _db.listing);
}

class AllTodosWithCategoryResult extends CustomResultSet {
  final RowId id;
  final String? title;
  final String content;
  final DateTime? targetDate;
  final RowId? category;
  final TodoStatus? status;
  final RowId catId;
  final String catDesc;
  AllTodosWithCategoryResult({
    required QueryRow row,
    required this.id,
    this.title,
    required this.content,
    this.targetDate,
    this.category,
    this.status,
    required this.catId,
    required this.catDesc,
  }) : super(row);
  @override
  int get hashCode => Object.hash(
      id, title, content, targetDate, category, status, catId, catDesc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AllTodosWithCategoryResult &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.targetDate == this.targetDate &&
          other.category == this.category &&
          other.status == this.status &&
          other.catId == this.catId &&
          other.catDesc == this.catDesc);
  @override
  String toString() {
    return (StringBuffer('AllTodosWithCategoryResult(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('targetDate: $targetDate, ')
          ..write('category: $category, ')
          ..write('status: $status, ')
          ..write('catId: $catId, ')
          ..write('catDesc: $catDesc')
          ..write(')'))
        .toString();
  }
}

mixin _$SomeDaoMixin on DatabaseAccessor<TodoDb> {
  $UsersTable get users => attachedDatabase.users;
  $CategoriesTable get categories => attachedDatabase.categories;
  $TodosTableTable get todosTable => attachedDatabase.todosTable;
  $SharedTodosTable get sharedTodos => attachedDatabase.sharedTodos;
  $TodoWithCategoryViewView get todoWithCategoryView =>
      attachedDatabase.todoWithCategoryView;
  Selectable<TodoEntry> todosForUser({required RowId user}) {
    return customSelect(
        'SELECT t.* FROM todos AS t INNER JOIN shared_todos AS st ON st.todo = t.id INNER JOIN users AS u ON u.id = st.user WHERE u.id = ?1',
        variables: [
          Variable<int>($UsersTable.$converterid.toSql(user))
        ],
        readsFrom: {
          todosTable,
          sharedTodos,
          users,
        }).asyncMap(todosTable.mapFromRow);
  }
}
