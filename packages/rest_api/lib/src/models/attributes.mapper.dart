// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attributes.dart';

class AttributesMapper extends ClassMapperBase<Attributes> {
  AttributesMapper._();

  static AttributesMapper? _instance;
  static AttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Attributes';

  static String? _$id(Attributes v) => v.id;
  static const Field<Attributes, String> _f$id = Field('id', _$id, opt: true);
  static String? _$name(Attributes v) => v.name;
  static const Field<Attributes, String> _f$name = Field(
    'name',
    _$name,
    opt: true,
  );
  static String? _$value(Attributes v) => v.value;
  static const Field<Attributes, String> _f$value = Field(
    'value',
    _$value,
    opt: true,
  );
  static bool? _$isUnique(Attributes v) => v.isUnique;
  static const Field<Attributes, bool> _f$isUnique = Field(
    'isUnique',
    _$isUnique,
    key: r'is-unique',
    opt: true,
  );

  @override
  final MappableFields<Attributes> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #isUnique: _f$isUnique,
  };
  @override
  final bool ignoreNull = true;

  static Attributes _instantiate(DecodingData data) {
    return Attributes(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      value: data.dec(_f$value),
      isUnique: data.dec(_f$isUnique),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Attributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Attributes>(map);
  }

  static Attributes fromJson(String json) {
    return ensureInitialized().decodeJson<Attributes>(json);
  }
}

mixin AttributesMappable {
  String toJsonString() {
    return AttributesMapper.ensureInitialized().encodeJson<Attributes>(
      this as Attributes,
    );
  }

  Map<String, dynamic> toJson() {
    return AttributesMapper.ensureInitialized().encodeMap<Attributes>(
      this as Attributes,
    );
  }

  AttributesCopyWith<Attributes, Attributes, Attributes> get copyWith =>
      _AttributesCopyWithImpl(this as Attributes, $identity, $identity);
  @override
  String toString() {
    return AttributesMapper.ensureInitialized().stringifyValue(
      this as Attributes,
    );
  }

  @override
  bool operator ==(Object other) {
    return AttributesMapper.ensureInitialized().equalsValue(
      this as Attributes,
      other,
    );
  }

  @override
  int get hashCode {
    return AttributesMapper.ensureInitialized().hashValue(this as Attributes);
  }
}

extension AttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Attributes, $Out> {
  AttributesCopyWith<$R, Attributes, $Out> get $asAttributes =>
      $base.as((v, t, t2) => _AttributesCopyWithImpl(v, t, t2));
}

abstract class AttributesCopyWith<$R, $In extends Attributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? value, bool? isUnique});
  AttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Attributes, $Out>
    implements AttributesCopyWith<$R, Attributes, $Out> {
  _AttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Attributes> $mapper =
      AttributesMapper.ensureInitialized();
  @override
  $R call({
    Object? id = $none,
    Object? name = $none,
    Object? value = $none,
    Object? isUnique = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != $none) #id: id,
      if (name != $none) #name: name,
      if (value != $none) #value: value,
      if (isUnique != $none) #isUnique: isUnique,
    }),
  );
  @override
  Attributes $make(CopyWithData data) => Attributes(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    value: data.get(#value, or: $value.value),
    isUnique: data.get(#isUnique, or: $value.isUnique),
  );

  @override
  AttributesCopyWith<$R2, Attributes, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AttributesCopyWithImpl($value, $cast, t);
}
