// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'room_request.dart';

class RoomRequestMapper extends ClassMapperBase<RoomRequest> {
  RoomRequestMapper._();

  static RoomRequestMapper? _instance;
  static RoomRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RoomRequest';

  static int? _$adultCount(RoomRequest v) => v.adultCount;
  static const Field<RoomRequest, int> _f$adultCount = Field(
    'adultCount',
    _$adultCount,
    key: r'adult-count',
    opt: true,
  );
  static List<num?>? _$childrenAges(RoomRequest v) => v.childrenAges;
  static const Field<RoomRequest, List<num?>> _f$childrenAges = Field(
    'childrenAges',
    _$childrenAges,
    key: r'children-ages',
    opt: true,
  );

  @override
  final MappableFields<RoomRequest> fields = const {
    #adultCount: _f$adultCount,
    #childrenAges: _f$childrenAges,
  };
  @override
  final bool ignoreNull = true;

  static RoomRequest _instantiate(DecodingData data) {
    return RoomRequest(
      adultCount: data.dec(_f$adultCount),
      childrenAges: data.dec(_f$childrenAges),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RoomRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoomRequest>(map);
  }

  static RoomRequest fromJson(String json) {
    return ensureInitialized().decodeJson<RoomRequest>(json);
  }
}

mixin RoomRequestMappable {
  String toJsonString() {
    return RoomRequestMapper.ensureInitialized().encodeJson<RoomRequest>(
      this as RoomRequest,
    );
  }

  Map<String, dynamic> toJson() {
    return RoomRequestMapper.ensureInitialized().encodeMap<RoomRequest>(
      this as RoomRequest,
    );
  }

  RoomRequestCopyWith<RoomRequest, RoomRequest, RoomRequest> get copyWith =>
      _RoomRequestCopyWithImpl(this as RoomRequest, $identity, $identity);
  @override
  String toString() {
    return RoomRequestMapper.ensureInitialized().stringifyValue(
      this as RoomRequest,
    );
  }

  @override
  bool operator ==(Object other) {
    return RoomRequestMapper.ensureInitialized().equalsValue(
      this as RoomRequest,
      other,
    );
  }

  @override
  int get hashCode {
    return RoomRequestMapper.ensureInitialized().hashValue(this as RoomRequest);
  }
}

extension RoomRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RoomRequest, $Out> {
  RoomRequestCopyWith<$R, RoomRequest, $Out> get $asRoomRequest =>
      $base.as((v, t, t2) => _RoomRequestCopyWithImpl(v, t, t2));
}

abstract class RoomRequestCopyWith<$R, $In extends RoomRequest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>? get childrenAges;
  $R call({int? adultCount, List<num?>? childrenAges});
  RoomRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoomRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoomRequest, $Out>
    implements RoomRequestCopyWith<$R, RoomRequest, $Out> {
  _RoomRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoomRequest> $mapper =
      RoomRequestMapper.ensureInitialized();
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
  $R call({Object? adultCount = $none, Object? childrenAges = $none}) => $apply(
    FieldCopyWithData({
      if (adultCount != $none) #adultCount: adultCount,
      if (childrenAges != $none) #childrenAges: childrenAges,
    }),
  );
  @override
  RoomRequest $make(CopyWithData data) => RoomRequest(
    adultCount: data.get(#adultCount, or: $value.adultCount),
    childrenAges: data.get(#childrenAges, or: $value.childrenAges),
  );

  @override
  RoomRequestCopyWith<$R2, RoomRequest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RoomRequestCopyWithImpl($value, $cast, t);
}
