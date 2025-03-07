// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_attribute.dart';

class FilterAttributeMapper extends ClassMapperBase<FilterAttribute> {
  FilterAttributeMapper._();

  static FilterAttributeMapper? _instance;
  static FilterAttributeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterAttributeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterAttribute';

  static String? _$attributeIdentifier(FilterAttribute v) =>
      v.attributeIdentifier;
  static const Field<FilterAttribute, String> _f$attributeIdentifier = Field(
    'attributeIdentifier',
    _$attributeIdentifier,
    key: r'attribute-identifier',
    opt: true,
  );
  static String? _$attributeValue(FilterAttribute v) => v.attributeValue;
  static const Field<FilterAttribute, String> _f$attributeValue = Field(
    'attributeValue',
    _$attributeValue,
    key: r'attribute-value',
    opt: true,
  );
  static bool? _$inUse(FilterAttribute v) => v.inUse;
  static const Field<FilterAttribute, bool> _f$inUse = Field(
    'inUse',
    _$inUse,
    key: r'in-use',
    opt: true,
  );
  static bool? _$isDisabled(FilterAttribute v) => v.isDisabled;
  static const Field<FilterAttribute, bool> _f$isDisabled = Field(
    'isDisabled',
    _$isDisabled,
    key: r'is-disabled',
    opt: true,
  );
  static bool? _$isPopular(FilterAttribute v) => v.isPopular;
  static const Field<FilterAttribute, bool> _f$isPopular = Field(
    'isPopular',
    _$isPopular,
    key: r'is-popular',
    opt: true,
  );
  static num? _$minPrice(FilterAttribute v) => v.minPrice;
  static const Field<FilterAttribute, num> _f$minPrice = Field(
    'minPrice',
    _$minPrice,
    key: r'min-price',
    opt: true,
  );
  static int? _$resultCount(FilterAttribute v) => v.resultCount;
  static const Field<FilterAttribute, int> _f$resultCount = Field(
    'resultCount',
    _$resultCount,
    key: r'result-count',
    opt: true,
  );

  @override
  final MappableFields<FilterAttribute> fields = const {
    #attributeIdentifier: _f$attributeIdentifier,
    #attributeValue: _f$attributeValue,
    #inUse: _f$inUse,
    #isDisabled: _f$isDisabled,
    #isPopular: _f$isPopular,
    #minPrice: _f$minPrice,
    #resultCount: _f$resultCount,
  };
  @override
  final bool ignoreNull = true;

  static FilterAttribute _instantiate(DecodingData data) {
    return FilterAttribute(
      attributeIdentifier: data.dec(_f$attributeIdentifier),
      attributeValue: data.dec(_f$attributeValue),
      inUse: data.dec(_f$inUse),
      isDisabled: data.dec(_f$isDisabled),
      isPopular: data.dec(_f$isPopular),
      minPrice: data.dec(_f$minPrice),
      resultCount: data.dec(_f$resultCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FilterAttribute fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FilterAttribute>(map);
  }

  static FilterAttribute fromJson(String json) {
    return ensureInitialized().decodeJson<FilterAttribute>(json);
  }
}

mixin FilterAttributeMappable {
  String toJsonString() {
    return FilterAttributeMapper.ensureInitialized()
        .encodeJson<FilterAttribute>(this as FilterAttribute);
  }

  Map<String, dynamic> toJson() {
    return FilterAttributeMapper.ensureInitialized().encodeMap<FilterAttribute>(
      this as FilterAttribute,
    );
  }

  FilterAttributeCopyWith<FilterAttribute, FilterAttribute, FilterAttribute>
  get copyWith => _FilterAttributeCopyWithImpl(
    this as FilterAttribute,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FilterAttributeMapper.ensureInitialized().stringifyValue(
      this as FilterAttribute,
    );
  }

  @override
  bool operator ==(Object other) {
    return FilterAttributeMapper.ensureInitialized().equalsValue(
      this as FilterAttribute,
      other,
    );
  }

  @override
  int get hashCode {
    return FilterAttributeMapper.ensureInitialized().hashValue(
      this as FilterAttribute,
    );
  }
}

extension FilterAttributeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterAttribute, $Out> {
  FilterAttributeCopyWith<$R, FilterAttribute, $Out> get $asFilterAttribute =>
      $base.as((v, t, t2) => _FilterAttributeCopyWithImpl(v, t, t2));
}

abstract class FilterAttributeCopyWith<$R, $In extends FilterAttribute, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? attributeIdentifier,
    String? attributeValue,
    bool? inUse,
    bool? isDisabled,
    bool? isPopular,
    num? minPrice,
    int? resultCount,
  });
  FilterAttributeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FilterAttributeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterAttribute, $Out>
    implements FilterAttributeCopyWith<$R, FilterAttribute, $Out> {
  _FilterAttributeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterAttribute> $mapper =
      FilterAttributeMapper.ensureInitialized();
  @override
  $R call({
    Object? attributeIdentifier = $none,
    Object? attributeValue = $none,
    Object? inUse = $none,
    Object? isDisabled = $none,
    Object? isPopular = $none,
    Object? minPrice = $none,
    Object? resultCount = $none,
  }) => $apply(
    FieldCopyWithData({
      if (attributeIdentifier != $none)
        #attributeIdentifier: attributeIdentifier,
      if (attributeValue != $none) #attributeValue: attributeValue,
      if (inUse != $none) #inUse: inUse,
      if (isDisabled != $none) #isDisabled: isDisabled,
      if (isPopular != $none) #isPopular: isPopular,
      if (minPrice != $none) #minPrice: minPrice,
      if (resultCount != $none) #resultCount: resultCount,
    }),
  );
  @override
  FilterAttribute $make(CopyWithData data) => FilterAttribute(
    attributeIdentifier: data.get(
      #attributeIdentifier,
      or: $value.attributeIdentifier,
    ),
    attributeValue: data.get(#attributeValue, or: $value.attributeValue),
    inUse: data.get(#inUse, or: $value.inUse),
    isDisabled: data.get(#isDisabled, or: $value.isDisabled),
    isPopular: data.get(#isPopular, or: $value.isPopular),
    minPrice: data.get(#minPrice, or: $value.minPrice),
    resultCount: data.get(#resultCount, or: $value.resultCount),
  );

  @override
  FilterAttributeCopyWith<$R2, FilterAttribute, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FilterAttributeCopyWithImpl($value, $cast, t);
}
