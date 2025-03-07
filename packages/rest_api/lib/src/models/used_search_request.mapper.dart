// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'used_search_request.dart';

class UsedSearchRequestMapper extends ClassMapperBase<UsedSearchRequest> {
  UsedSearchRequestMapper._();

  static UsedSearchRequestMapper? _instance;
  static UsedSearchRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UsedSearchRequestMapper._());
      DurationRangeMapper.ensureInitialized();
      PriceRangeMapper.ensureInitialized();
      RoomRequestMapper.ensureInitialized();
      UsedSearchRequestSortMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UsedSearchRequest';

  static String? _$attributes(UsedSearchRequest v) => v.attributes;
  static const Field<UsedSearchRequest, String> _f$attributes = Field(
    'attributes',
    _$attributes,
    opt: true,
  );
  static String? _$departureAirports(UsedSearchRequest v) =>
      v.departureAirports;
  static const Field<UsedSearchRequest, String> _f$departureAirports = Field(
    'departureAirports',
    _$departureAirports,
    key: r'departure-airports',
    opt: true,
  );
  static DateTime? _$departureDate(UsedSearchRequest v) => v.departureDate;
  static const Field<UsedSearchRequest, DateTime> _f$departureDate = Field(
    'departureDate',
    _$departureDate,
    key: r'departure-date',
    opt: true,
  );
  static DurationRange? _$durationRange(UsedSearchRequest v) => v.durationRange;
  static const Field<UsedSearchRequest, DurationRange> _f$durationRange = Field(
    'durationRange',
    _$durationRange,
    key: r'duration-range',
    opt: true,
  );
  static PriceRange? _$priceRange(UsedSearchRequest v) => v.priceRange;
  static const Field<UsedSearchRequest, PriceRange> _f$priceRange = Field(
    'priceRange',
    _$priceRange,
    key: r'price-range',
    opt: true,
  );
  static DateTime? _$returnDate(UsedSearchRequest v) => v.returnDate;
  static const Field<UsedSearchRequest, DateTime> _f$returnDate = Field(
    'returnDate',
    _$returnDate,
    key: r'return-date',
    opt: true,
  );
  static List<RoomRequest?>? _$rooms(UsedSearchRequest v) => v.rooms;
  static const Field<UsedSearchRequest, List<RoomRequest?>> _f$rooms = Field(
    'rooms',
    _$rooms,
    opt: true,
  );
  static String? _$travelType(UsedSearchRequest v) => v.travelType;
  static const Field<UsedSearchRequest, String> _f$travelType = Field(
    'travelType',
    _$travelType,
    key: r'travel-type',
    opt: true,
  );
  static String? _$destination(UsedSearchRequest v) => v.destination;
  static const Field<UsedSearchRequest, String> _f$destination = Field(
    'destination',
    _$destination,
    opt: true,
  );
  static UsedSearchRequestSort? _$sort(UsedSearchRequest v) => v.sort;
  static const Field<UsedSearchRequest, UsedSearchRequestSort> _f$sort = Field(
    'sort',
    _$sort,
    opt: true,
  );
  static String? _$destinationName(UsedSearchRequest v) => v.destinationName;
  static const Field<UsedSearchRequest, String> _f$destinationName = Field(
    'destinationName',
    _$destinationName,
    opt: true,
  );
  static num? _$limit(UsedSearchRequest v) => v.limit;
  static const Field<UsedSearchRequest, num> _f$limit = Field(
    'limit',
    _$limit,
    opt: true,
  );
  static num? _$offset(UsedSearchRequest v) => v.offset;
  static const Field<UsedSearchRequest, num> _f$offset = Field(
    'offset',
    _$offset,
    opt: true,
  );

  @override
  final MappableFields<UsedSearchRequest> fields = const {
    #attributes: _f$attributes,
    #departureAirports: _f$departureAirports,
    #departureDate: _f$departureDate,
    #durationRange: _f$durationRange,
    #priceRange: _f$priceRange,
    #returnDate: _f$returnDate,
    #rooms: _f$rooms,
    #travelType: _f$travelType,
    #destination: _f$destination,
    #sort: _f$sort,
    #destinationName: _f$destinationName,
    #limit: _f$limit,
    #offset: _f$offset,
  };
  @override
  final bool ignoreNull = true;

  static UsedSearchRequest _instantiate(DecodingData data) {
    return UsedSearchRequest(
      attributes: data.dec(_f$attributes),
      departureAirports: data.dec(_f$departureAirports),
      departureDate: data.dec(_f$departureDate),
      durationRange: data.dec(_f$durationRange),
      priceRange: data.dec(_f$priceRange),
      returnDate: data.dec(_f$returnDate),
      rooms: data.dec(_f$rooms),
      travelType: data.dec(_f$travelType),
      destination: data.dec(_f$destination),
      sort: data.dec(_f$sort),
      destinationName: data.dec(_f$destinationName),
      limit: data.dec(_f$limit),
      offset: data.dec(_f$offset),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UsedSearchRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UsedSearchRequest>(map);
  }

  static UsedSearchRequest fromJson(String json) {
    return ensureInitialized().decodeJson<UsedSearchRequest>(json);
  }
}

mixin UsedSearchRequestMappable {
  String toJsonString() {
    return UsedSearchRequestMapper.ensureInitialized()
        .encodeJson<UsedSearchRequest>(this as UsedSearchRequest);
  }

  Map<String, dynamic> toJson() {
    return UsedSearchRequestMapper.ensureInitialized()
        .encodeMap<UsedSearchRequest>(this as UsedSearchRequest);
  }

  UsedSearchRequestCopyWith<
    UsedSearchRequest,
    UsedSearchRequest,
    UsedSearchRequest
  >
  get copyWith => _UsedSearchRequestCopyWithImpl(
    this as UsedSearchRequest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UsedSearchRequestMapper.ensureInitialized().stringifyValue(
      this as UsedSearchRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return UsedSearchRequestMapper.ensureInitialized().equalsValue(
      this as UsedSearchRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return UsedSearchRequestMapper.ensureInitialized().hashValue(
      this as UsedSearchRequest,
    );
  }
}

extension UsedSearchRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UsedSearchRequest, $Out> {
  UsedSearchRequestCopyWith<$R, UsedSearchRequest, $Out>
  get $asUsedSearchRequest =>
      $base.as((v, t, t2) => _UsedSearchRequestCopyWithImpl(v, t, t2));
}

abstract class UsedSearchRequestCopyWith<
  $R,
  $In extends UsedSearchRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  DurationRangeCopyWith<$R, DurationRange, DurationRange>? get durationRange;
  PriceRangeCopyWith<$R, PriceRange, PriceRange>? get priceRange;
  ListCopyWith<
    $R,
    RoomRequest?,
    RoomRequestCopyWith<$R, RoomRequest, RoomRequest>?
  >?
  get rooms;
  $R call({
    String? attributes,
    String? departureAirports,
    DateTime? departureDate,
    DurationRange? durationRange,
    PriceRange? priceRange,
    DateTime? returnDate,
    List<RoomRequest?>? rooms,
    String? travelType,
    String? destination,
    UsedSearchRequestSort? sort,
    String? destinationName,
    num? limit,
    num? offset,
  });
  UsedSearchRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UsedSearchRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UsedSearchRequest, $Out>
    implements UsedSearchRequestCopyWith<$R, UsedSearchRequest, $Out> {
  _UsedSearchRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UsedSearchRequest> $mapper =
      UsedSearchRequestMapper.ensureInitialized();
  @override
  DurationRangeCopyWith<$R, DurationRange, DurationRange>? get durationRange =>
      $value.durationRange?.copyWith.$chain((v) => call(durationRange: v));
  @override
  PriceRangeCopyWith<$R, PriceRange, PriceRange>? get priceRange =>
      $value.priceRange?.copyWith.$chain((v) => call(priceRange: v));
  @override
  ListCopyWith<
    $R,
    RoomRequest?,
    RoomRequestCopyWith<$R, RoomRequest, RoomRequest>?
  >?
  get rooms =>
      $value.rooms != null
          ? ListCopyWith(
            $value.rooms!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(rooms: v),
          )
          : null;
  @override
  $R call({
    Object? attributes = $none,
    Object? departureAirports = $none,
    Object? departureDate = $none,
    Object? durationRange = $none,
    Object? priceRange = $none,
    Object? returnDate = $none,
    Object? rooms = $none,
    Object? travelType = $none,
    Object? destination = $none,
    Object? sort = $none,
    Object? destinationName = $none,
    Object? limit = $none,
    Object? offset = $none,
  }) => $apply(
    FieldCopyWithData({
      if (attributes != $none) #attributes: attributes,
      if (departureAirports != $none) #departureAirports: departureAirports,
      if (departureDate != $none) #departureDate: departureDate,
      if (durationRange != $none) #durationRange: durationRange,
      if (priceRange != $none) #priceRange: priceRange,
      if (returnDate != $none) #returnDate: returnDate,
      if (rooms != $none) #rooms: rooms,
      if (travelType != $none) #travelType: travelType,
      if (destination != $none) #destination: destination,
      if (sort != $none) #sort: sort,
      if (destinationName != $none) #destinationName: destinationName,
      if (limit != $none) #limit: limit,
      if (offset != $none) #offset: offset,
    }),
  );
  @override
  UsedSearchRequest $make(CopyWithData data) => UsedSearchRequest(
    attributes: data.get(#attributes, or: $value.attributes),
    departureAirports: data.get(
      #departureAirports,
      or: $value.departureAirports,
    ),
    departureDate: data.get(#departureDate, or: $value.departureDate),
    durationRange: data.get(#durationRange, or: $value.durationRange),
    priceRange: data.get(#priceRange, or: $value.priceRange),
    returnDate: data.get(#returnDate, or: $value.returnDate),
    rooms: data.get(#rooms, or: $value.rooms),
    travelType: data.get(#travelType, or: $value.travelType),
    destination: data.get(#destination, or: $value.destination),
    sort: data.get(#sort, or: $value.sort),
    destinationName: data.get(#destinationName, or: $value.destinationName),
    limit: data.get(#limit, or: $value.limit),
    offset: data.get(#offset, or: $value.offset),
  );

  @override
  UsedSearchRequestCopyWith<$R2, UsedSearchRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UsedSearchRequestCopyWithImpl($value, $cast, t);
}
