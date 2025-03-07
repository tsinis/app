// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'analytics.dart';

class AnalyticsMapper extends ClassMapperBase<Analytics> {
  AnalyticsMapper._();

  static AnalyticsMapper? _instance;
  static AnalyticsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AnalyticsMapper._());
      SelectItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Analytics';

  static SelectItem? _$object0(Analytics v) => v.object0;
  static const Field<Analytics, SelectItem> _f$object0 = Field(
    'object0',
    _$object0,
    key: r'select_item.item.0',
    opt: true,
  );

  @override
  final MappableFields<Analytics> fields = const {#object0: _f$object0};
  @override
  final bool ignoreNull = true;

  static Analytics _instantiate(DecodingData data) {
    return Analytics(object0: data.dec(_f$object0));
  }

  @override
  final Function instantiate = _instantiate;

  static Analytics fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Analytics>(map);
  }

  static Analytics fromJson(String json) {
    return ensureInitialized().decodeJson<Analytics>(json);
  }
}

mixin AnalyticsMappable {
  String toJsonString() {
    return AnalyticsMapper.ensureInitialized().encodeJson<Analytics>(
      this as Analytics,
    );
  }

  Map<String, dynamic> toJson() {
    return AnalyticsMapper.ensureInitialized().encodeMap<Analytics>(
      this as Analytics,
    );
  }

  AnalyticsCopyWith<Analytics, Analytics, Analytics> get copyWith =>
      _AnalyticsCopyWithImpl(this as Analytics, $identity, $identity);
  @override
  String toString() {
    return AnalyticsMapper.ensureInitialized().stringifyValue(
      this as Analytics,
    );
  }

  @override
  bool operator ==(Object other) {
    return AnalyticsMapper.ensureInitialized().equalsValue(
      this as Analytics,
      other,
    );
  }

  @override
  int get hashCode {
    return AnalyticsMapper.ensureInitialized().hashValue(this as Analytics);
  }
}

extension AnalyticsValueCopy<$R, $Out> on ObjectCopyWith<$R, Analytics, $Out> {
  AnalyticsCopyWith<$R, Analytics, $Out> get $asAnalytics =>
      $base.as((v, t, t2) => _AnalyticsCopyWithImpl(v, t, t2));
}

abstract class AnalyticsCopyWith<$R, $In extends Analytics, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  SelectItemCopyWith<$R, SelectItem, SelectItem>? get object0;
  $R call({SelectItem? object0});
  AnalyticsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AnalyticsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Analytics, $Out>
    implements AnalyticsCopyWith<$R, Analytics, $Out> {
  _AnalyticsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Analytics> $mapper =
      AnalyticsMapper.ensureInitialized();
  @override
  SelectItemCopyWith<$R, SelectItem, SelectItem>? get object0 =>
      $value.object0?.copyWith.$chain((v) => call(object0: v));
  @override
  $R call({Object? object0 = $none}) =>
      $apply(FieldCopyWithData({if (object0 != $none) #object0: object0}));
  @override
  Analytics $make(CopyWithData data) =>
      Analytics(object0: data.get(#object0, or: $value.object0));

  @override
  AnalyticsCopyWith<$R2, Analytics, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AnalyticsCopyWithImpl($value, $cast, t);
}
