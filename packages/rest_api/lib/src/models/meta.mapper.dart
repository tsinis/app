// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'meta.dart';

class MetaMapper extends ClassMapperBase<Meta> {
  MetaMapper._();

  static MetaMapper? _instance;
  static MetaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetaMapper._());
      AgentMapper.ensureInitialized();
      ScarcityElementMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Meta';

  static Agent? _$agent(Meta v) => v.agent;
  static const Field<Meta, Agent> _f$agent = Field('agent', _$agent, opt: true);
  static int? _$count(Meta v) => v.count;
  static const Field<Meta, int> _f$count = Field('count', _$count, opt: true);
  static List<ScarcityElement?>? _$scarcityElements(Meta v) =>
      v.scarcityElements;
  static const Field<Meta, List<ScarcityElement?>> _f$scarcityElements = Field(
    'scarcityElements',
    _$scarcityElements,
    key: r'scarcity-elements',
    opt: true,
  );

  @override
  final MappableFields<Meta> fields = const {
    #agent: _f$agent,
    #count: _f$count,
    #scarcityElements: _f$scarcityElements,
  };
  @override
  final bool ignoreNull = true;

  static Meta _instantiate(DecodingData data) {
    return Meta(
      agent: data.dec(_f$agent),
      count: data.dec(_f$count),
      scarcityElements: data.dec(_f$scarcityElements),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Meta fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Meta>(map);
  }

  static Meta fromJson(String json) {
    return ensureInitialized().decodeJson<Meta>(json);
  }
}

mixin MetaMappable {
  String toJsonString() {
    return MetaMapper.ensureInitialized().encodeJson<Meta>(this as Meta);
  }

  Map<String, dynamic> toJson() {
    return MetaMapper.ensureInitialized().encodeMap<Meta>(this as Meta);
  }

  MetaCopyWith<Meta, Meta, Meta> get copyWith =>
      _MetaCopyWithImpl(this as Meta, $identity, $identity);
  @override
  String toString() {
    return MetaMapper.ensureInitialized().stringifyValue(this as Meta);
  }

  @override
  bool operator ==(Object other) {
    return MetaMapper.ensureInitialized().equalsValue(this as Meta, other);
  }

  @override
  int get hashCode {
    return MetaMapper.ensureInitialized().hashValue(this as Meta);
  }
}

extension MetaValueCopy<$R, $Out> on ObjectCopyWith<$R, Meta, $Out> {
  MetaCopyWith<$R, Meta, $Out> get $asMeta =>
      $base.as((v, t, t2) => _MetaCopyWithImpl(v, t, t2));
}

abstract class MetaCopyWith<$R, $In extends Meta, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AgentCopyWith<$R, Agent, Agent>? get agent;
  ListCopyWith<
    $R,
    ScarcityElement?,
    ScarcityElementCopyWith<$R, ScarcityElement, ScarcityElement>?
  >?
  get scarcityElements;
  $R call({Agent? agent, int? count, List<ScarcityElement?>? scarcityElements});
  MetaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetaCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Meta, $Out>
    implements MetaCopyWith<$R, Meta, $Out> {
  _MetaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Meta> $mapper = MetaMapper.ensureInitialized();
  @override
  AgentCopyWith<$R, Agent, Agent>? get agent =>
      $value.agent?.copyWith.$chain((v) => call(agent: v));
  @override
  ListCopyWith<
    $R,
    ScarcityElement?,
    ScarcityElementCopyWith<$R, ScarcityElement, ScarcityElement>?
  >?
  get scarcityElements =>
      $value.scarcityElements != null
          ? ListCopyWith(
            $value.scarcityElements!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(scarcityElements: v),
          )
          : null;
  @override
  $R call({
    Object? agent = $none,
    Object? count = $none,
    Object? scarcityElements = $none,
  }) => $apply(
    FieldCopyWithData({
      if (agent != $none) #agent: agent,
      if (count != $none) #count: count,
      if (scarcityElements != $none) #scarcityElements: scarcityElements,
    }),
  );
  @override
  Meta $make(CopyWithData data) => Meta(
    agent: data.get(#agent, or: $value.agent),
    count: data.get(#count, or: $value.count),
    scarcityElements: data.get(#scarcityElements, or: $value.scarcityElements),
  );

  @override
  MetaCopyWith<$R2, Meta, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MetaCopyWithImpl($value, $cast, t);
}
