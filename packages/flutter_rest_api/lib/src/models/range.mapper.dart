// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'range.dart';

class RangeMapper extends ClassMapperBase<Range> {
  RangeMapper._();

  static RangeMapper? _instance;
  static RangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RangeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Range';

  static String? _$max(Range v) => v.max;
  static const Field<Range, String> _f$max = Field('max', _$max, opt: true);
  static String? _$min(Range v) => v.min;
  static const Field<Range, String> _f$min = Field('min', _$min, opt: true);
  static String? _$type(Range v) => v.type;
  static const Field<Range, String> _f$type = Field('type', _$type, opt: true);
  static String? _$selectedMaxValue(Range v) => v.selectedMaxValue;
  static const Field<Range, String> _f$selectedMaxValue = Field(
    'selectedMaxValue',
    _$selectedMaxValue,
    key: r'selected-max-value',
    opt: true,
  );
  static String? _$selectedMinValue(Range v) => v.selectedMinValue;
  static const Field<Range, String> _f$selectedMinValue = Field(
    'selectedMinValue',
    _$selectedMinValue,
    key: r'selected-min-value',
    opt: true,
  );

  @override
  final MappableFields<Range> fields = const {
    #max: _f$max,
    #min: _f$min,
    #type: _f$type,
    #selectedMaxValue: _f$selectedMaxValue,
    #selectedMinValue: _f$selectedMinValue,
  };
  @override
  final bool ignoreNull = true;

  static Range _instantiate(DecodingData data) {
    return Range(
      max: data.dec(_f$max),
      min: data.dec(_f$min),
      type: data.dec(_f$type),
      selectedMaxValue: data.dec(_f$selectedMaxValue),
      selectedMinValue: data.dec(_f$selectedMinValue),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Range fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Range>(map);
  }

  static Range fromJson(String json) {
    return ensureInitialized().decodeJson<Range>(json);
  }
}

mixin RangeMappable {
  String toJsonString() {
    return RangeMapper.ensureInitialized().encodeJson<Range>(this as Range);
  }

  Map<String, dynamic> toJson() {
    return RangeMapper.ensureInitialized().encodeMap<Range>(this as Range);
  }

  RangeCopyWith<Range, Range, Range> get copyWith =>
      _RangeCopyWithImpl(this as Range, $identity, $identity);
  @override
  String toString() {
    return RangeMapper.ensureInitialized().stringifyValue(this as Range);
  }

  @override
  bool operator ==(Object other) {
    return RangeMapper.ensureInitialized().equalsValue(this as Range, other);
  }

  @override
  int get hashCode {
    return RangeMapper.ensureInitialized().hashValue(this as Range);
  }
}

extension RangeValueCopy<$R, $Out> on ObjectCopyWith<$R, Range, $Out> {
  RangeCopyWith<$R, Range, $Out> get $asRange =>
      $base.as((v, t, t2) => _RangeCopyWithImpl(v, t, t2));
}

abstract class RangeCopyWith<$R, $In extends Range, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? max,
    String? min,
    String? type,
    String? selectedMaxValue,
    String? selectedMinValue,
  });
  RangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RangeCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Range, $Out>
    implements RangeCopyWith<$R, Range, $Out> {
  _RangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Range> $mapper = RangeMapper.ensureInitialized();
  @override
  $R call({
    Object? max = $none,
    Object? min = $none,
    Object? type = $none,
    Object? selectedMaxValue = $none,
    Object? selectedMinValue = $none,
  }) => $apply(
    FieldCopyWithData({
      if (max != $none) #max: max,
      if (min != $none) #min: min,
      if (type != $none) #type: type,
      if (selectedMaxValue != $none) #selectedMaxValue: selectedMaxValue,
      if (selectedMinValue != $none) #selectedMinValue: selectedMinValue,
    }),
  );
  @override
  Range $make(CopyWithData data) => Range(
    max: data.get(#max, or: $value.max),
    min: data.get(#min, or: $value.min),
    type: data.get(#type, or: $value.type),
    selectedMaxValue: data.get(#selectedMaxValue, or: $value.selectedMaxValue),
    selectedMinValue: data.get(#selectedMinValue, or: $value.selectedMinValue),
  );

  @override
  RangeCopyWith<$R2, Range, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RangeCopyWithImpl($value, $cast, t);
}
