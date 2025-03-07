// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scarcity_element.dart';

class ScarcityElementMapper extends ClassMapperBase<ScarcityElement> {
  ScarcityElementMapper._();

  static ScarcityElementMapper? _instance;
  static ScarcityElementMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScarcityElementMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ScarcityElement';

  static String? _$type(ScarcityElement v) => v.type;
  static const Field<ScarcityElement, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
  );

  @override
  final MappableFields<ScarcityElement> fields = const {#type: _f$type};
  @override
  final bool ignoreNull = true;

  static ScarcityElement _instantiate(DecodingData data) {
    return ScarcityElement(type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static ScarcityElement fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScarcityElement>(map);
  }

  static ScarcityElement fromJson(String json) {
    return ensureInitialized().decodeJson<ScarcityElement>(json);
  }
}

mixin ScarcityElementMappable {
  String toJsonString() {
    return ScarcityElementMapper.ensureInitialized()
        .encodeJson<ScarcityElement>(this as ScarcityElement);
  }

  Map<String, dynamic> toJson() {
    return ScarcityElementMapper.ensureInitialized().encodeMap<ScarcityElement>(
      this as ScarcityElement,
    );
  }

  ScarcityElementCopyWith<ScarcityElement, ScarcityElement, ScarcityElement>
  get copyWith => _ScarcityElementCopyWithImpl(
    this as ScarcityElement,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ScarcityElementMapper.ensureInitialized().stringifyValue(
      this as ScarcityElement,
    );
  }

  @override
  bool operator ==(Object other) {
    return ScarcityElementMapper.ensureInitialized().equalsValue(
      this as ScarcityElement,
      other,
    );
  }

  @override
  int get hashCode {
    return ScarcityElementMapper.ensureInitialized().hashValue(
      this as ScarcityElement,
    );
  }
}

extension ScarcityElementValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScarcityElement, $Out> {
  ScarcityElementCopyWith<$R, ScarcityElement, $Out> get $asScarcityElement =>
      $base.as((v, t, t2) => _ScarcityElementCopyWithImpl(v, t, t2));
}

abstract class ScarcityElementCopyWith<$R, $In extends ScarcityElement, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type});
  ScarcityElementCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ScarcityElementCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScarcityElement, $Out>
    implements ScarcityElementCopyWith<$R, ScarcityElement, $Out> {
  _ScarcityElementCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScarcityElement> $mapper =
      ScarcityElementMapper.ensureInitialized();
  @override
  $R call({Object? type = $none}) =>
      $apply(FieldCopyWithData({if (type != $none) #type: type}));
  @override
  ScarcityElement $make(CopyWithData data) =>
      ScarcityElement(type: data.get(#type, or: $value.type));

  @override
  ScarcityElementCopyWith<$R2, ScarcityElement, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ScarcityElementCopyWithImpl($value, $cast, t);
}
