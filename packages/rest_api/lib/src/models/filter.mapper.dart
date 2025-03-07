// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter.dart';

class FilterMapper extends ClassMapperBase<Filter> {
  FilterMapper._();

  static FilterMapper? _instance;
  static FilterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterMapper._());
      FilterAttributeMapper.ensureInitialized();
      FilterTypeMapper.ensureInitialized();
      RangeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Filter';

  static List<FilterAttribute?>? _$attributes(Filter v) => v.attributes;
  static const Field<Filter, List<FilterAttribute?>> _f$attributes = Field(
    'attributes',
    _$attributes,
    opt: true,
  );
  static String? _$category(Filter v) => v.category;
  static const Field<Filter, String> _f$category = Field(
    'category',
    _$category,
    opt: true,
  );
  static bool? _$inUse(Filter v) => v.inUse;
  static const Field<Filter, bool> _f$inUse = Field(
    'inUse',
    _$inUse,
    key: r'in-use',
    opt: true,
  );
  static FilterType? _$type(Filter v) => v.type;
  static const Field<Filter, FilterType> _f$type = Field(
    'type',
    _$type,
    opt: true,
  );
  static Range? _$range(Filter v) => v.range;
  static const Field<Filter, Range> _f$range = Field(
    'range',
    _$range,
    opt: true,
  );

  @override
  final MappableFields<Filter> fields = const {
    #attributes: _f$attributes,
    #category: _f$category,
    #inUse: _f$inUse,
    #type: _f$type,
    #range: _f$range,
  };
  @override
  final bool ignoreNull = true;

  static Filter _instantiate(DecodingData data) {
    return Filter(
      attributes: data.dec(_f$attributes),
      category: data.dec(_f$category),
      inUse: data.dec(_f$inUse),
      type: data.dec(_f$type),
      range: data.dec(_f$range),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Filter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Filter>(map);
  }

  static Filter fromJson(String json) {
    return ensureInitialized().decodeJson<Filter>(json);
  }
}

mixin FilterMappable {
  String toJsonString() {
    return FilterMapper.ensureInitialized().encodeJson<Filter>(this as Filter);
  }

  Map<String, dynamic> toJson() {
    return FilterMapper.ensureInitialized().encodeMap<Filter>(this as Filter);
  }

  FilterCopyWith<Filter, Filter, Filter> get copyWith =>
      _FilterCopyWithImpl(this as Filter, $identity, $identity);
  @override
  String toString() {
    return FilterMapper.ensureInitialized().stringifyValue(this as Filter);
  }

  @override
  bool operator ==(Object other) {
    return FilterMapper.ensureInitialized().equalsValue(this as Filter, other);
  }

  @override
  int get hashCode {
    return FilterMapper.ensureInitialized().hashValue(this as Filter);
  }
}

extension FilterValueCopy<$R, $Out> on ObjectCopyWith<$R, Filter, $Out> {
  FilterCopyWith<$R, Filter, $Out> get $asFilter =>
      $base.as((v, t, t2) => _FilterCopyWithImpl(v, t, t2));
}

abstract class FilterCopyWith<$R, $In extends Filter, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    FilterAttribute?,
    FilterAttributeCopyWith<$R, FilterAttribute, FilterAttribute>?
  >?
  get attributes;
  RangeCopyWith<$R, Range, Range>? get range;
  $R call({
    List<FilterAttribute?>? attributes,
    String? category,
    bool? inUse,
    FilterType? type,
    Range? range,
  });
  FilterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FilterCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Filter, $Out>
    implements FilterCopyWith<$R, Filter, $Out> {
  _FilterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Filter> $mapper = FilterMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    FilterAttribute?,
    FilterAttributeCopyWith<$R, FilterAttribute, FilterAttribute>?
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
  RangeCopyWith<$R, Range, Range>? get range =>
      $value.range?.copyWith.$chain((v) => call(range: v));
  @override
  $R call({
    Object? attributes = $none,
    Object? category = $none,
    Object? inUse = $none,
    Object? type = $none,
    Object? range = $none,
  }) => $apply(
    FieldCopyWithData({
      if (attributes != $none) #attributes: attributes,
      if (category != $none) #category: category,
      if (inUse != $none) #inUse: inUse,
      if (type != $none) #type: type,
      if (range != $none) #range: range,
    }),
  );
  @override
  Filter $make(CopyWithData data) => Filter(
    attributes: data.get(#attributes, or: $value.attributes),
    category: data.get(#category, or: $value.category),
    inUse: data.get(#inUse, or: $value.inUse),
    type: data.get(#type, or: $value.type),
    range: data.get(#range, or: $value.range),
  );

  @override
  FilterCopyWith<$R2, Filter, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FilterCopyWithImpl($value, $cast, t);
}
