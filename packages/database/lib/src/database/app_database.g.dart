// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
mixin $HotelTableTableToColumns implements Insertable<Hotel> {
  String get hotelId;
  BestOffer? get bestOffer;
  String? get destination;
  List<ApiImage?>? get images;
  String? get name;
  RatingInfo? get ratingInfo;
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['hotel_id'] = Variable<String>(hotelId);
    if (!nullToAbsent || bestOffer != null) {
      map['best_offer'] = Variable<String>(
        $HotelTableTable.$converterbestOffern.toSql(bestOffer),
      );
    }
    if (!nullToAbsent || destination != null) {
      map['destination'] = Variable<String>(destination);
    }
    if (!nullToAbsent || images != null) {
      map['images'] = Variable<String>(
        $HotelTableTable.$converterimages.toSql(images),
      );
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || ratingInfo != null) {
      map['rating_info'] = Variable<String>(
        $HotelTableTable.$converterratingInfon.toSql(ratingInfo),
      );
    }
    return map;
  }
}

class $HotelTableTable extends HotelTable
    with TableInfo<$HotelTableTable, Hotel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HotelTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _hotelIdMeta = const VerificationMeta(
    'hotelId',
  );
  @override
  late final GeneratedColumn<String> hotelId = GeneratedColumn<String>(
    'hotel_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<BestOffer?, String> bestOffer =
      GeneratedColumn<String>(
        'best_offer',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<BestOffer?>($HotelTableTable.$converterbestOffern);
  static const VerificationMeta _destinationMeta = const VerificationMeta(
    'destination',
  );
  @override
  late final GeneratedColumn<String> destination = GeneratedColumn<String>(
    'destination',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<ApiImage?>?, String> images =
      GeneratedColumn<String>(
        'images',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<ApiImage?>?>($HotelTableTable.$converterimages);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<RatingInfo?, String> ratingInfo =
      GeneratedColumn<String>(
        'rating_info',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<RatingInfo?>($HotelTableTable.$converterratingInfon);
  @override
  List<GeneratedColumn> get $columns => [
    hotelId,
    bestOffer,
    destination,
    images,
    name,
    ratingInfo,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hotel_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<Hotel> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('hotel_id')) {
      context.handle(
        _hotelIdMeta,
        hotelId.isAcceptableOrUnknown(data['hotel_id']!, _hotelIdMeta),
      );
    } else if (isInserting) {
      context.missing(_hotelIdMeta);
    }
    if (data.containsKey('destination')) {
      context.handle(
        _destinationMeta,
        destination.isAcceptableOrUnknown(
          data['destination']!,
          _destinationMeta,
        ),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {hotelId};
  @override
  Hotel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Hotel(
      hotelId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}hotel_id'],
          )!,
      bestOffer: $HotelTableTable.$converterbestOffern.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}best_offer'],
        ),
      ),
      destination: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination'],
      ),
      images: $HotelTableTable.$converterimages.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}images'],
        ),
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      ratingInfo: $HotelTableTable.$converterratingInfon.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}rating_info'],
        ),
      ),
    );
  }

  @override
  $HotelTableTable createAlias(String alias) {
    return $HotelTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<BestOffer, String, Map<String, dynamic>>
  $converterbestOffer = const BestOfferConverter();
  static JsonTypeConverter2<BestOffer?, String?, Map<String, dynamic>?>
  $converterbestOffern = JsonTypeConverter2.asNullable($converterbestOffer);
  static JsonTypeConverter2<
    List<ApiImage?>?,
    String?,
    List<Map<String, dynamic>?>
  >
  $converterimages = const ListApiImageConverter();
  static JsonTypeConverter2<RatingInfo, String, Map<String, dynamic>>
  $converterratingInfo = const RatingInfoConverter();
  static JsonTypeConverter2<RatingInfo?, String?, Map<String, dynamic>?>
  $converterratingInfon = JsonTypeConverter2.asNullable($converterratingInfo);
}

class HotelTableCompanion extends UpdateCompanion<Hotel> {
  final Value<String> hotelId;
  final Value<BestOffer?> bestOffer;
  final Value<String?> destination;
  final Value<List<ApiImage?>?> images;
  final Value<String?> name;
  final Value<RatingInfo?> ratingInfo;
  final Value<int> rowid;
  const HotelTableCompanion({
    this.hotelId = const Value.absent(),
    this.bestOffer = const Value.absent(),
    this.destination = const Value.absent(),
    this.images = const Value.absent(),
    this.name = const Value.absent(),
    this.ratingInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HotelTableCompanion.insert({
    required String hotelId,
    this.bestOffer = const Value.absent(),
    this.destination = const Value.absent(),
    this.images = const Value.absent(),
    this.name = const Value.absent(),
    this.ratingInfo = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : hotelId = Value(hotelId);
  static Insertable<Hotel> custom({
    Expression<String>? hotelId,
    Expression<String>? bestOffer,
    Expression<String>? destination,
    Expression<String>? images,
    Expression<String>? name,
    Expression<String>? ratingInfo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (hotelId != null) 'hotel_id': hotelId,
      if (bestOffer != null) 'best_offer': bestOffer,
      if (destination != null) 'destination': destination,
      if (images != null) 'images': images,
      if (name != null) 'name': name,
      if (ratingInfo != null) 'rating_info': ratingInfo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HotelTableCompanion copyWith({
    Value<String>? hotelId,
    Value<BestOffer?>? bestOffer,
    Value<String?>? destination,
    Value<List<ApiImage?>?>? images,
    Value<String?>? name,
    Value<RatingInfo?>? ratingInfo,
    Value<int>? rowid,
  }) {
    return HotelTableCompanion(
      hotelId: hotelId ?? this.hotelId,
      bestOffer: bestOffer ?? this.bestOffer,
      destination: destination ?? this.destination,
      images: images ?? this.images,
      name: name ?? this.name,
      ratingInfo: ratingInfo ?? this.ratingInfo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (hotelId.present) {
      map['hotel_id'] = Variable<String>(hotelId.value);
    }
    if (bestOffer.present) {
      map['best_offer'] = Variable<String>(
        $HotelTableTable.$converterbestOffern.toSql(bestOffer.value),
      );
    }
    if (destination.present) {
      map['destination'] = Variable<String>(destination.value);
    }
    if (images.present) {
      map['images'] = Variable<String>(
        $HotelTableTable.$converterimages.toSql(images.value),
      );
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (ratingInfo.present) {
      map['rating_info'] = Variable<String>(
        $HotelTableTable.$converterratingInfon.toSql(ratingInfo.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HotelTableCompanion(')
          ..write('hotelId: $hotelId, ')
          ..write('bestOffer: $bestOffer, ')
          ..write('destination: $destination, ')
          ..write('images: $images, ')
          ..write('name: $name, ')
          ..write('ratingInfo: $ratingInfo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $HotelTableTable hotelTable = $HotelTableTable(this);
  late final HotelDao hotelDao = HotelDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [hotelTable];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$HotelTableTableCreateCompanionBuilder =
    HotelTableCompanion Function({
      required String hotelId,
      Value<BestOffer?> bestOffer,
      Value<String?> destination,
      Value<List<ApiImage?>?> images,
      Value<String?> name,
      Value<RatingInfo?> ratingInfo,
      Value<int> rowid,
    });
typedef $$HotelTableTableUpdateCompanionBuilder =
    HotelTableCompanion Function({
      Value<String> hotelId,
      Value<BestOffer?> bestOffer,
      Value<String?> destination,
      Value<List<ApiImage?>?> images,
      Value<String?> name,
      Value<RatingInfo?> ratingInfo,
      Value<int> rowid,
    });

class $$HotelTableTableFilterComposer
    extends Composer<_$AppDatabase, $HotelTableTable> {
  $$HotelTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get hotelId => $composableBuilder(
    column: $table.hotelId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<BestOffer?, BestOffer, String> get bestOffer =>
      $composableBuilder(
        column: $table.bestOffer,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<ApiImage?>?, List<ApiImage>?, String>
  get images => $composableBuilder(
    column: $table.images,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<RatingInfo?, RatingInfo, String>
  get ratingInfo => $composableBuilder(
    column: $table.ratingInfo,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );
}

class $$HotelTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HotelTableTable> {
  $$HotelTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get hotelId => $composableBuilder(
    column: $table.hotelId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bestOffer => $composableBuilder(
    column: $table.bestOffer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get images => $composableBuilder(
    column: $table.images,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ratingInfo => $composableBuilder(
    column: $table.ratingInfo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HotelTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HotelTableTable> {
  $$HotelTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get hotelId =>
      $composableBuilder(column: $table.hotelId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<BestOffer?, String> get bestOffer =>
      $composableBuilder(column: $table.bestOffer, builder: (column) => column);

  GeneratedColumn<String> get destination => $composableBuilder(
    column: $table.destination,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<ApiImage?>?, String> get images =>
      $composableBuilder(column: $table.images, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumnWithTypeConverter<RatingInfo?, String> get ratingInfo =>
      $composableBuilder(
        column: $table.ratingInfo,
        builder: (column) => column,
      );
}

class $$HotelTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HotelTableTable,
          Hotel,
          $$HotelTableTableFilterComposer,
          $$HotelTableTableOrderingComposer,
          $$HotelTableTableAnnotationComposer,
          $$HotelTableTableCreateCompanionBuilder,
          $$HotelTableTableUpdateCompanionBuilder,
          (Hotel, BaseReferences<_$AppDatabase, $HotelTableTable, Hotel>),
          Hotel,
          PrefetchHooks Function()
        > {
  $$HotelTableTableTableManager(_$AppDatabase db, $HotelTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$HotelTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$HotelTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$HotelTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> hotelId = const Value.absent(),
                Value<BestOffer?> bestOffer = const Value.absent(),
                Value<String?> destination = const Value.absent(),
                Value<List<ApiImage?>?> images = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<RatingInfo?> ratingInfo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HotelTableCompanion(
                hotelId: hotelId,
                bestOffer: bestOffer,
                destination: destination,
                images: images,
                name: name,
                ratingInfo: ratingInfo,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String hotelId,
                Value<BestOffer?> bestOffer = const Value.absent(),
                Value<String?> destination = const Value.absent(),
                Value<List<ApiImage?>?> images = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<RatingInfo?> ratingInfo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HotelTableCompanion.insert(
                hotelId: hotelId,
                bestOffer: bestOffer,
                destination: destination,
                images: images,
                name: name,
                ratingInfo: ratingInfo,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HotelTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HotelTableTable,
      Hotel,
      $$HotelTableTableFilterComposer,
      $$HotelTableTableOrderingComposer,
      $$HotelTableTableAnnotationComposer,
      $$HotelTableTableCreateCompanionBuilder,
      $$HotelTableTableUpdateCompanionBuilder,
      (Hotel, BaseReferences<_$AppDatabase, $HotelTableTable, Hotel>),
      Hotel,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$HotelTableTableTableManager get hotelTable =>
      $$HotelTableTableTableManager(_db, _db.hotelTable);
}
