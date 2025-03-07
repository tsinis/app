// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'room_groups.dart';

class RoomGroupsMapper extends ClassMapperBase<RoomGroups> {
  RoomGroupsMapper._();

  static RoomGroupsMapper? _instance;
  static RoomGroupsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RoomGroupsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RoomGroups';

  static List<dynamic>? _$attributes(RoomGroups v) => v.attributes;
  static const Field<RoomGroups, List<dynamic>> _f$attributes = Field(
    'attributes',
    _$attributes,
    opt: true,
  );
  static String? _$boarding(RoomGroups v) => v.boarding;
  static const Field<RoomGroups, String> _f$boarding = Field(
    'boarding',
    _$boarding,
    opt: true,
  );
  static String? _$name(RoomGroups v) => v.name;
  static const Field<RoomGroups, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String? _$detailedDescription(RoomGroups v) => v.detailedDescription;
  static const Field<RoomGroups, String> _f$detailedDescription = Field(
    'detailedDescription',
    _$detailedDescription,
    key: r'detailed-description',
    opt: true,
  );
  static String? _$groupIdentifier(RoomGroups v) => v.groupIdentifier;
  static const Field<RoomGroups, String> _f$groupIdentifier = Field(
    'groupIdentifier',
    _$groupIdentifier,
    key: r'group-identifier',
    opt: true,
  );
  static num? _$quantity(RoomGroups v) => v.quantity;
  static const Field<RoomGroups, num> _f$quantity = Field(
    'quantity',
    _$quantity,
    opt: true,
  );

  @override
  final MappableFields<RoomGroups> fields = const {
    #attributes: _f$attributes,
    #boarding: _f$boarding,
    #name: _f$name,
    #detailedDescription: _f$detailedDescription,
    #groupIdentifier: _f$groupIdentifier,
    #quantity: _f$quantity,
  };
  @override
  final bool ignoreNull = true;

  static RoomGroups _instantiate(DecodingData data) {
    return RoomGroups(
      attributes: data.dec(_f$attributes),
      boarding: data.dec(_f$boarding),
      name: data.dec(_f$name),
      detailedDescription: data.dec(_f$detailedDescription),
      groupIdentifier: data.dec(_f$groupIdentifier),
      quantity: data.dec(_f$quantity),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RoomGroups fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RoomGroups>(map);
  }

  static RoomGroups fromJson(String json) {
    return ensureInitialized().decodeJson<RoomGroups>(json);
  }
}

mixin RoomGroupsMappable {
  String toJsonString() {
    return RoomGroupsMapper.ensureInitialized().encodeJson<RoomGroups>(
      this as RoomGroups,
    );
  }

  Map<String, dynamic> toJson() {
    return RoomGroupsMapper.ensureInitialized().encodeMap<RoomGroups>(
      this as RoomGroups,
    );
  }

  RoomGroupsCopyWith<RoomGroups, RoomGroups, RoomGroups> get copyWith =>
      _RoomGroupsCopyWithImpl(this as RoomGroups, $identity, $identity);
  @override
  String toString() {
    return RoomGroupsMapper.ensureInitialized().stringifyValue(
      this as RoomGroups,
    );
  }

  @override
  bool operator ==(Object other) {
    return RoomGroupsMapper.ensureInitialized().equalsValue(
      this as RoomGroups,
      other,
    );
  }

  @override
  int get hashCode {
    return RoomGroupsMapper.ensureInitialized().hashValue(this as RoomGroups);
  }
}

extension RoomGroupsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RoomGroups, $Out> {
  RoomGroupsCopyWith<$R, RoomGroups, $Out> get $asRoomGroups =>
      $base.as((v, t, t2) => _RoomGroupsCopyWithImpl(v, t, t2));
}

abstract class RoomGroupsCopyWith<$R, $In extends RoomGroups, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get attributes;
  $R call({
    List<dynamic>? attributes,
    String? boarding,
    String? name,
    String? detailedDescription,
    String? groupIdentifier,
    num? quantity,
  });
  RoomGroupsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RoomGroupsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RoomGroups, $Out>
    implements RoomGroupsCopyWith<$R, RoomGroups, $Out> {
  _RoomGroupsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RoomGroups> $mapper =
      RoomGroupsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
  get attributes =>
      $value.attributes != null
          ? ListCopyWith(
            $value.attributes!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(attributes: v),
          )
          : null;
  @override
  $R call({
    Object? attributes = $none,
    Object? boarding = $none,
    Object? name = $none,
    Object? detailedDescription = $none,
    Object? groupIdentifier = $none,
    Object? quantity = $none,
  }) => $apply(
    FieldCopyWithData({
      if (attributes != $none) #attributes: attributes,
      if (boarding != $none) #boarding: boarding,
      if (name != $none) #name: name,
      if (detailedDescription != $none)
        #detailedDescription: detailedDescription,
      if (groupIdentifier != $none) #groupIdentifier: groupIdentifier,
      if (quantity != $none) #quantity: quantity,
    }),
  );
  @override
  RoomGroups $make(CopyWithData data) => RoomGroups(
    attributes: data.get(#attributes, or: $value.attributes),
    boarding: data.get(#boarding, or: $value.boarding),
    name: data.get(#name, or: $value.name),
    detailedDescription: data.get(
      #detailedDescription,
      or: $value.detailedDescription,
    ),
    groupIdentifier: data.get(#groupIdentifier, or: $value.groupIdentifier),
    quantity: data.get(#quantity, or: $value.quantity),
  );

  @override
  RoomGroupsCopyWith<$R2, RoomGroups, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RoomGroupsCopyWithImpl($value, $cast, t);
}
