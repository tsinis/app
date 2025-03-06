// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rooms.dart';

class RoomsMapper extends ClassMapperBase<Rooms> {
  RoomsMapper._();

  static RoomsMapper? _instance;
  static RoomsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomsMapper._());
      RoomOverallMapper.ensureInitialized();
      PricesAndOccupancyMapper.ensureInitialized();
      RoomGroupsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Rooms';

  static RoomOverall? _$overall(Rooms v) => v.overall;
  static const Field<Rooms, RoomOverall> _f$overall = Field(
    'overall',
    _$overall,
    opt: true,
  );
  static List<PricesAndOccupancy?>? _$pricesAndOccupancy(Rooms v) =>
      v.pricesAndOccupancy;
  static const Field<Rooms, List<PricesAndOccupancy?>> _f$pricesAndOccupancy =
      Field(
        'pricesAndOccupancy',
        _$pricesAndOccupancy,
        key: r'prices-and-occupancy',
        opt: true,
      );
  static List<RoomGroups?>? _$roomGroups(Rooms v) => v.roomGroups;
  static const Field<Rooms, List<RoomGroups?>> _f$roomGroups = Field(
    'roomGroups',
    _$roomGroups,
    key: r'room-groups',
    opt: true,
  );

  @override
  final MappableFields<Rooms> fields = const {
    #overall: _f$overall,
    #pricesAndOccupancy: _f$pricesAndOccupancy,
    #roomGroups: _f$roomGroups,
  };
  @override
  final bool ignoreNull = true;

  static Rooms _instantiate(DecodingData data) {
    return Rooms(
      overall: data.dec(_f$overall),
      pricesAndOccupancy: data.dec(_f$pricesAndOccupancy),
      roomGroups: data.dec(_f$roomGroups),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Rooms fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Rooms>(map);
  }

  static Rooms fromJson(String json) {
    return ensureInitialized().decodeJson<Rooms>(json);
  }
}

mixin RoomsMappable {
  String toJsonString() {
    return RoomsMapper.ensureInitialized().encodeJson<Rooms>(this as Rooms);
  }

  Map<String, dynamic> toJson() {
    return RoomsMapper.ensureInitialized().encodeMap<Rooms>(this as Rooms);
  }

  RoomsCopyWith<Rooms, Rooms, Rooms> get copyWith =>
      _RoomsCopyWithImpl(this as Rooms, $identity, $identity);
  @override
  String toString() {
    return RoomsMapper.ensureInitialized().stringifyValue(this as Rooms);
  }

  @override
  bool operator ==(Object other) {
    return RoomsMapper.ensureInitialized().equalsValue(this as Rooms, other);
  }

  @override
  int get hashCode {
    return RoomsMapper.ensureInitialized().hashValue(this as Rooms);
  }
}

extension RoomsValueCopy<$R, $Out> on ObjectCopyWith<$R, Rooms, $Out> {
  RoomsCopyWith<$R, Rooms, $Out> get $asRooms =>
      $base.as((v, t, t2) => _RoomsCopyWithImpl(v, t, t2));
}

abstract class RoomsCopyWith<$R, $In extends Rooms, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RoomOverallCopyWith<$R, RoomOverall, RoomOverall>? get overall;
  ListCopyWith<
    $R,
    PricesAndOccupancy?,
    PricesAndOccupancyCopyWith<$R, PricesAndOccupancy, PricesAndOccupancy>?
  >?
  get pricesAndOccupancy;
  ListCopyWith<
    $R,
    RoomGroups?,
    RoomGroupsCopyWith<$R, RoomGroups, RoomGroups>?
  >?
  get roomGroups;
  $R call({
    RoomOverall? overall,
    List<PricesAndOccupancy?>? pricesAndOccupancy,
    List<RoomGroups?>? roomGroups,
  });
  RoomsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoomsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Rooms, $Out>
    implements RoomsCopyWith<$R, Rooms, $Out> {
  _RoomsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Rooms> $mapper = RoomsMapper.ensureInitialized();
  @override
  RoomOverallCopyWith<$R, RoomOverall, RoomOverall>? get overall =>
      $value.overall?.copyWith.$chain((v) => call(overall: v));
  @override
  ListCopyWith<
    $R,
    PricesAndOccupancy?,
    PricesAndOccupancyCopyWith<$R, PricesAndOccupancy, PricesAndOccupancy>?
  >?
  get pricesAndOccupancy =>
      $value.pricesAndOccupancy != null
          ? ListCopyWith(
            $value.pricesAndOccupancy!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(pricesAndOccupancy: v),
          )
          : null;
  @override
  ListCopyWith<
    $R,
    RoomGroups?,
    RoomGroupsCopyWith<$R, RoomGroups, RoomGroups>?
  >?
  get roomGroups =>
      $value.roomGroups != null
          ? ListCopyWith(
            $value.roomGroups!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(roomGroups: v),
          )
          : null;
  @override
  $R call({
    Object? overall = $none,
    Object? pricesAndOccupancy = $none,
    Object? roomGroups = $none,
  }) => $apply(
    FieldCopyWithData({
      if (overall != $none) #overall: overall,
      if (pricesAndOccupancy != $none) #pricesAndOccupancy: pricesAndOccupancy,
      if (roomGroups != $none) #roomGroups: roomGroups,
    }),
  );
  @override
  Rooms $make(CopyWithData data) => Rooms(
    overall: data.get(#overall, or: $value.overall),
    pricesAndOccupancy: data.get(
      #pricesAndOccupancy,
      or: $value.pricesAndOccupancy,
    ),
    roomGroups: data.get(#roomGroups, or: $value.roomGroups),
  );

  @override
  RoomsCopyWith<$R2, Rooms, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RoomsCopyWithImpl($value, $cast, t);
}
