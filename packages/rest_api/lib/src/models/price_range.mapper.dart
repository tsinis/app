// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'price_range.dart';

class PriceRangeMapper extends ClassMapperBase<PriceRange> {
  PriceRangeMapper._();

  static PriceRangeMapper? _instance;
  static PriceRangeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceRangeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PriceRange';

  static num? _$max(PriceRange v) => v.max;
  static const Field<PriceRange, num> _f$max = Field('max', _$max, opt: true);
  static num? _$min(PriceRange v) => v.min;
  static const Field<PriceRange, num> _f$min = Field('min', _$min, opt: true);

  @override
  final MappableFields<PriceRange> fields = const {#max: _f$max, #min: _f$min};
  @override
  final bool ignoreNull = true;

  static PriceRange _instantiate(DecodingData data) {
    return PriceRange(max: data.dec(_f$max), min: data.dec(_f$min));
  }

  @override
  final Function instantiate = _instantiate;

  static PriceRange fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PriceRange>(map);
  }

  static PriceRange fromJson(String json) {
    return ensureInitialized().decodeJson<PriceRange>(json);
  }
}

mixin PriceRangeMappable {
  String toJsonString() {
    return PriceRangeMapper.ensureInitialized().encodeJson<PriceRange>(
      this as PriceRange,
    );
  }

  Map<String, dynamic> toJson() {
    return PriceRangeMapper.ensureInitialized().encodeMap<PriceRange>(
      this as PriceRange,
    );
  }

  PriceRangeCopyWith<PriceRange, PriceRange, PriceRange> get copyWith =>
      _PriceRangeCopyWithImpl(this as PriceRange, $identity, $identity);
  @override
  String toString() {
    return PriceRangeMapper.ensureInitialized().stringifyValue(
      this as PriceRange,
    );
  }

  @override
  bool operator ==(Object other) {
    return PriceRangeMapper.ensureInitialized().equalsValue(
      this as PriceRange,
      other,
    );
  }

  @override
  int get hashCode {
    return PriceRangeMapper.ensureInitialized().hashValue(this as PriceRange);
  }
}

extension PriceRangeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PriceRange, $Out> {
  PriceRangeCopyWith<$R, PriceRange, $Out> get $asPriceRange =>
      $base.as((v, t, t2) => _PriceRangeCopyWithImpl(v, t, t2));
}

abstract class PriceRangeCopyWith<$R, $In extends PriceRange, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({num? max, num? min});
  PriceRangeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PriceRangeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PriceRange, $Out>
    implements PriceRangeCopyWith<$R, PriceRange, $Out> {
  _PriceRangeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PriceRange> $mapper =
      PriceRangeMapper.ensureInitialized();
  @override
  $R call({Object? max = $none, Object? min = $none}) => $apply(
    FieldCopyWithData({
      if (max != $none) #max: max,
      if (min != $none) #min: min,
    }),
  );
  @override
  PriceRange $make(CopyWithData data) => PriceRange(
    max: data.get(#max, or: $value.max),
    min: data.get(#min, or: $value.min),
  );

  @override
  PriceRangeCopyWith<$R2, PriceRange, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PriceRangeCopyWithImpl($value, $cast, t);
}
