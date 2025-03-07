// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'prices_and_occupancy.dart';

class PricesAndOccupancyMapper extends ClassMapperBase<PricesAndOccupancy> {
  PricesAndOccupancyMapper._();

  static PricesAndOccupancyMapper? _instance;
  static PricesAndOccupancyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PricesAndOccupancyMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PricesAndOccupancy';

  static int? _$adultCount(PricesAndOccupancy v) => v.adultCount;
  static const Field<PricesAndOccupancy, int> _f$adultCount = Field(
    'adultCount',
    _$adultCount,
    key: r'adult-count',
    opt: true,
  );
  static List<num?>? _$childrenAges(PricesAndOccupancy v) => v.childrenAges;
  static const Field<PricesAndOccupancy, List<num?>> _f$childrenAges = Field(
    'childrenAges',
    _$childrenAges,
    key: r'children-ages',
    opt: true,
  );
  static int? _$childrenCount(PricesAndOccupancy v) => v.childrenCount;
  static const Field<PricesAndOccupancy, int> _f$childrenCount = Field(
    'childrenCount',
    _$childrenCount,
    key: r'children-count',
    opt: true,
  );
  static List<num?>? _$detailedPricePerPerson(PricesAndOccupancy v) =>
      v.detailedPricePerPerson;
  static const Field<PricesAndOccupancy, List<num?>> _f$detailedPricePerPerson =
      Field(
        'detailedPricePerPerson',
        _$detailedPricePerPerson,
        key: r'detailed-price-per-person',
        opt: true,
      );
  static String? _$groupIdentifier(PricesAndOccupancy v) => v.groupIdentifier;
  static const Field<PricesAndOccupancy, String> _f$groupIdentifier = Field(
    'groupIdentifier',
    _$groupIdentifier,
    key: r'group-identifier',
    opt: true,
  );
  static num? _$simplePricePerPerson(PricesAndOccupancy v) =>
      v.simplePricePerPerson;
  static const Field<PricesAndOccupancy, num> _f$simplePricePerPerson = Field(
    'simplePricePerPerson',
    _$simplePricePerPerson,
    key: r'simple-price-per-person',
    opt: true,
  );
  static num? _$total(PricesAndOccupancy v) => v.total;
  static const Field<PricesAndOccupancy, num> _f$total = Field(
    'total',
    _$total,
    opt: true,
  );

  @override
  final MappableFields<PricesAndOccupancy> fields = const {
    #adultCount: _f$adultCount,
    #childrenAges: _f$childrenAges,
    #childrenCount: _f$childrenCount,
    #detailedPricePerPerson: _f$detailedPricePerPerson,
    #groupIdentifier: _f$groupIdentifier,
    #simplePricePerPerson: _f$simplePricePerPerson,
    #total: _f$total,
  };
  @override
  final bool ignoreNull = true;

  static PricesAndOccupancy _instantiate(DecodingData data) {
    return PricesAndOccupancy(
      adultCount: data.dec(_f$adultCount),
      childrenAges: data.dec(_f$childrenAges),
      childrenCount: data.dec(_f$childrenCount),
      detailedPricePerPerson: data.dec(_f$detailedPricePerPerson),
      groupIdentifier: data.dec(_f$groupIdentifier),
      simplePricePerPerson: data.dec(_f$simplePricePerPerson),
      total: data.dec(_f$total),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PricesAndOccupancy fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PricesAndOccupancy>(map);
  }

  static PricesAndOccupancy fromJson(String json) {
    return ensureInitialized().decodeJson<PricesAndOccupancy>(json);
  }
}

mixin PricesAndOccupancyMappable {
  String toJsonString() {
    return PricesAndOccupancyMapper.ensureInitialized()
        .encodeJson<PricesAndOccupancy>(this as PricesAndOccupancy);
  }

  Map<String, dynamic> toJson() {
    return PricesAndOccupancyMapper.ensureInitialized()
        .encodeMap<PricesAndOccupancy>(this as PricesAndOccupancy);
  }

  PricesAndOccupancyCopyWith<
    PricesAndOccupancy,
    PricesAndOccupancy,
    PricesAndOccupancy
  >
  get copyWith => _PricesAndOccupancyCopyWithImpl(
    this as PricesAndOccupancy,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PricesAndOccupancyMapper.ensureInitialized().stringifyValue(
      this as PricesAndOccupancy,
    );
  }

  @override
  bool operator ==(Object other) {
    return PricesAndOccupancyMapper.ensureInitialized().equalsValue(
      this as PricesAndOccupancy,
      other,
    );
  }

  @override
  int get hashCode {
    return PricesAndOccupancyMapper.ensureInitialized().hashValue(
      this as PricesAndOccupancy,
    );
  }
}

extension PricesAndOccupancyValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PricesAndOccupancy, $Out> {
  PricesAndOccupancyCopyWith<$R, PricesAndOccupancy, $Out>
  get $asPricesAndOccupancy =>
      $base.as((v, t, t2) => _PricesAndOccupancyCopyWithImpl(v, t, t2));
}

abstract class PricesAndOccupancyCopyWith<
  $R,
  $In extends PricesAndOccupancy,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>? get childrenAges;
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>?
  get detailedPricePerPerson;
  $R call({
    int? adultCount,
    List<num?>? childrenAges,
    int? childrenCount,
    List<num?>? detailedPricePerPerson,
    String? groupIdentifier,
    num? simplePricePerPerson,
    num? total,
  });
  PricesAndOccupancyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _PricesAndOccupancyCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PricesAndOccupancy, $Out>
    implements PricesAndOccupancyCopyWith<$R, PricesAndOccupancy, $Out> {
  _PricesAndOccupancyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PricesAndOccupancy> $mapper =
      PricesAndOccupancyMapper.ensureInitialized();
  @override
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>? get childrenAges =>
      $value.childrenAges != null
          ? ListCopyWith(
            $value.childrenAges!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(childrenAges: v),
          )
          : null;
  @override
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>?
  get detailedPricePerPerson =>
      $value.detailedPricePerPerson != null
          ? ListCopyWith(
            $value.detailedPricePerPerson!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(detailedPricePerPerson: v),
          )
          : null;
  @override
  $R call({
    Object? adultCount = $none,
    Object? childrenAges = $none,
    Object? childrenCount = $none,
    Object? detailedPricePerPerson = $none,
    Object? groupIdentifier = $none,
    Object? simplePricePerPerson = $none,
    Object? total = $none,
  }) => $apply(
    FieldCopyWithData({
      if (adultCount != $none) #adultCount: adultCount,
      if (childrenAges != $none) #childrenAges: childrenAges,
      if (childrenCount != $none) #childrenCount: childrenCount,
      if (detailedPricePerPerson != $none)
        #detailedPricePerPerson: detailedPricePerPerson,
      if (groupIdentifier != $none) #groupIdentifier: groupIdentifier,
      if (simplePricePerPerson != $none)
        #simplePricePerPerson: simplePricePerPerson,
      if (total != $none) #total: total,
    }),
  );
  @override
  PricesAndOccupancy $make(CopyWithData data) => PricesAndOccupancy(
    adultCount: data.get(#adultCount, or: $value.adultCount),
    childrenAges: data.get(#childrenAges, or: $value.childrenAges),
    childrenCount: data.get(#childrenCount, or: $value.childrenCount),
    detailedPricePerPerson: data.get(
      #detailedPricePerPerson,
      or: $value.detailedPricePerPerson,
    ),
    groupIdentifier: data.get(#groupIdentifier, or: $value.groupIdentifier),
    simplePricePerPerson: data.get(
      #simplePricePerPerson,
      or: $value.simplePricePerPerson,
    ),
    total: data.get(#total, or: $value.total),
  );

  @override
  PricesAndOccupancyCopyWith<$R2, PricesAndOccupancy, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PricesAndOccupancyCopyWithImpl($value, $cast, t);
}
