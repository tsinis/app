// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'room_overall.dart';

class RoomOverallMapper extends ClassMapperBase<RoomOverall> {
  RoomOverallMapper._();

  static RoomOverallMapper? _instance;
  static RoomOverallMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomOverallMapper._());
      AttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RoomOverall';

  static List<Attributes?>? _$attributes(RoomOverall v) => v.attributes;
  static const Field<RoomOverall, List<Attributes?>> _f$attributes = Field(
    'attributes',
    _$attributes,
    opt: true,
  );
  static String? _$boarding(RoomOverall v) => v.boarding;
  static const Field<RoomOverall, String> _f$boarding = Field(
    'boarding',
    _$boarding,
    opt: true,
  );
  static String? _$name(RoomOverall v) => v.name;
  static const Field<RoomOverall, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static int? _$adultCount(RoomOverall v) => v.adultCount;
  static const Field<RoomOverall, int> _f$adultCount = Field(
    'adultCount',
    _$adultCount,
    key: r'adult-count',
    opt: true,
  );
  static List<num?>? _$childrenAges(RoomOverall v) => v.childrenAges;
  static const Field<RoomOverall, List<num?>> _f$childrenAges = Field(
    'childrenAges',
    _$childrenAges,
    key: r'children-ages',
    opt: true,
  );
  static int? _$childrenCount(RoomOverall v) => v.childrenCount;
  static const Field<RoomOverall, int> _f$childrenCount = Field(
    'childrenCount',
    _$childrenCount,
    key: r'children-count',
    opt: true,
  );
  static num? _$quantity(RoomOverall v) => v.quantity;
  static const Field<RoomOverall, num> _f$quantity = Field(
    'quantity',
    _$quantity,
    opt: true,
  );
  static bool? _$sameBoarding(RoomOverall v) => v.sameBoarding;
  static const Field<RoomOverall, bool> _f$sameBoarding = Field(
    'sameBoarding',
    _$sameBoarding,
    key: r'same-boarding',
    opt: true,
  );
  static bool? _$sameRoomGroups(RoomOverall v) => v.sameRoomGroups;
  static const Field<RoomOverall, bool> _f$sameRoomGroups = Field(
    'sameRoomGroups',
    _$sameRoomGroups,
    key: r'same-room-groups',
    opt: true,
  );

  @override
  final MappableFields<RoomOverall> fields = const {
    #attributes: _f$attributes,
    #boarding: _f$boarding,
    #name: _f$name,
    #adultCount: _f$adultCount,
    #childrenAges: _f$childrenAges,
    #childrenCount: _f$childrenCount,
    #quantity: _f$quantity,
    #sameBoarding: _f$sameBoarding,
    #sameRoomGroups: _f$sameRoomGroups,
  };
  @override
  final bool ignoreNull = true;

  static RoomOverall _instantiate(DecodingData data) {
    return RoomOverall(
      attributes: data.dec(_f$attributes),
      boarding: data.dec(_f$boarding),
      name: data.dec(_f$name),
      adultCount: data.dec(_f$adultCount),
      childrenAges: data.dec(_f$childrenAges),
      childrenCount: data.dec(_f$childrenCount),
      quantity: data.dec(_f$quantity),
      sameBoarding: data.dec(_f$sameBoarding),
      sameRoomGroups: data.dec(_f$sameRoomGroups),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RoomOverall fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoomOverall>(map);
  }

  static RoomOverall fromJson(String json) {
    return ensureInitialized().decodeJson<RoomOverall>(json);
  }
}

mixin RoomOverallMappable {
  String toJsonString() {
    return RoomOverallMapper.ensureInitialized().encodeJson<RoomOverall>(
      this as RoomOverall,
    );
  }

  Map<String, dynamic> toJson() {
    return RoomOverallMapper.ensureInitialized().encodeMap<RoomOverall>(
      this as RoomOverall,
    );
  }

  RoomOverallCopyWith<RoomOverall, RoomOverall, RoomOverall> get copyWith =>
      _RoomOverallCopyWithImpl(this as RoomOverall, $identity, $identity);
  @override
  String toString() {
    return RoomOverallMapper.ensureInitialized().stringifyValue(
      this as RoomOverall,
    );
  }

  @override
  bool operator ==(Object other) {
    return RoomOverallMapper.ensureInitialized().equalsValue(
      this as RoomOverall,
      other,
    );
  }

  @override
  int get hashCode {
    return RoomOverallMapper.ensureInitialized().hashValue(this as RoomOverall);
  }
}

extension RoomOverallValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RoomOverall, $Out> {
  RoomOverallCopyWith<$R, RoomOverall, $Out> get $asRoomOverall =>
      $base.as((v, t, t2) => _RoomOverallCopyWithImpl(v, t, t2));
}

abstract class RoomOverallCopyWith<$R, $In extends RoomOverall, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    Attributes?,
    AttributesCopyWith<$R, Attributes, Attributes>?
  >?
  get attributes;
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>? get childrenAges;
  $R call({
    List<Attributes?>? attributes,
    String? boarding,
    String? name,
    int? adultCount,
    List<num?>? childrenAges,
    int? childrenCount,
    num? quantity,
    bool? sameBoarding,
    bool? sameRoomGroups,
  });
  RoomOverallCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoomOverallCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoomOverall, $Out>
    implements RoomOverallCopyWith<$R, RoomOverall, $Out> {
  _RoomOverallCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoomOverall> $mapper =
      RoomOverallMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    Attributes?,
    AttributesCopyWith<$R, Attributes, Attributes>?
  >?
  get attributes =>
      $value.attributes != null
          ? ListCopyWith(
            $value.attributes!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(attributes: v),
          )
          : null;
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
  $R call({
    Object? attributes = $none,
    Object? boarding = $none,
    Object? name = $none,
    Object? adultCount = $none,
    Object? childrenAges = $none,
    Object? childrenCount = $none,
    Object? quantity = $none,
    Object? sameBoarding = $none,
    Object? sameRoomGroups = $none,
  }) => $apply(
    FieldCopyWithData({
      if (attributes != $none) #attributes: attributes,
      if (boarding != $none) #boarding: boarding,
      if (name != $none) #name: name,
      if (adultCount != $none) #adultCount: adultCount,
      if (childrenAges != $none) #childrenAges: childrenAges,
      if (childrenCount != $none) #childrenCount: childrenCount,
      if (quantity != $none) #quantity: quantity,
      if (sameBoarding != $none) #sameBoarding: sameBoarding,
      if (sameRoomGroups != $none) #sameRoomGroups: sameRoomGroups,
    }),
  );
  @override
  RoomOverall $make(CopyWithData data) => RoomOverall(
    attributes: data.get(#attributes, or: $value.attributes),
    boarding: data.get(#boarding, or: $value.boarding),
    name: data.get(#name, or: $value.name),
    adultCount: data.get(#adultCount, or: $value.adultCount),
    childrenAges: data.get(#childrenAges, or: $value.childrenAges),
    childrenCount: data.get(#childrenCount, or: $value.childrenCount),
    quantity: data.get(#quantity, or: $value.quantity),
    sameBoarding: data.get(#sameBoarding, or: $value.sameBoarding),
    sameRoomGroups: data.get(#sameRoomGroups, or: $value.sameRoomGroups),
  );

  @override
  RoomOverallCopyWith<$R2, RoomOverall, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RoomOverallCopyWithImpl($value, $cast, t);
}
