// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'duration_range.dart';

class DurationRangeMapper extends ClassMapperBase<DurationRange> {
  DurationRangeMapper._();

  static DurationRangeMapper? _instance;
  static DurationRangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DurationRangeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DurationRange';

  static String? _$max(DurationRange v) => v.max;
  static const Field<DurationRange, String> _f$max = Field(
    'max',
    _$max,
    opt: true,
  );
  static String? _$min(DurationRange v) => v.min;
  static const Field<DurationRange, String> _f$min = Field(
    'min',
    _$min,
    opt: true,
  );

  @override
  final MappableFields<DurationRange> fields = const {
    #max: _f$max,
    #min: _f$min,
  };
  @override
  final bool ignoreNull = true;

  static DurationRange _instantiate(DecodingData data) {
    return DurationRange(max: data.dec(_f$max), min: data.dec(_f$min));
  }

  @override
  final Function instantiate = _instantiate;

  static DurationRange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DurationRange>(map);
  }

  static DurationRange fromJson(String json) {
    return ensureInitialized().decodeJson<DurationRange>(json);
  }
}

mixin DurationRangeMappable {
  String toJsonString() {
    return DurationRangeMapper.ensureInitialized().encodeJson<DurationRange>(
      this as DurationRange,
    );
  }

  Map<String, dynamic> toJson() {
    return DurationRangeMapper.ensureInitialized().encodeMap<DurationRange>(
      this as DurationRange,
    );
  }

  DurationRangeCopyWith<DurationRange, DurationRange, DurationRange>
  get copyWith =>
      _DurationRangeCopyWithImpl(this as DurationRange, $identity, $identity);
  @override
  String toString() {
    return DurationRangeMapper.ensureInitialized().stringifyValue(
      this as DurationRange,
    );
  }

  @override
  bool operator ==(Object other) {
    return DurationRangeMapper.ensureInitialized().equalsValue(
      this as DurationRange,
      other,
    );
  }

  @override
  int get hashCode {
    return DurationRangeMapper.ensureInitialized().hashValue(
      this as DurationRange,
    );
  }
}

extension DurationRangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DurationRange, $Out> {
  DurationRangeCopyWith<$R, DurationRange, $Out> get $asDurationRange =>
      $base.as((v, t, t2) => _DurationRangeCopyWithImpl(v, t, t2));
}

abstract class DurationRangeCopyWith<$R, $In extends DurationRange, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? max, String? min});
  DurationRangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DurationRangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DurationRange, $Out>
    implements DurationRangeCopyWith<$R, DurationRange, $Out> {
  _DurationRangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DurationRange> $mapper =
      DurationRangeMapper.ensureInitialized();
  @override
  $R call({Object? max = $none, Object? min = $none}) => $apply(
    FieldCopyWithData({
      if (max != $none) #max: max,
      if (min != $none) #min: min,
    }),
  );
  @override
  DurationRange $make(CopyWithData data) => DurationRange(
    max: data.get(#max, or: $value.max),
    min: data.get(#min, or: $value.min),
  );

  @override
  DurationRangeCopyWith<$R2, DurationRange, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DurationRangeCopyWithImpl($value, $cast, t);
}
