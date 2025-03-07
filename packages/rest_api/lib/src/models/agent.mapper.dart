// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'agent.dart';

class AgentMapper extends ClassMapperBase<Agent> {
  AgentMapper._();

  static AgentMapper? _instance;
  static AgentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AgentMapper._());
      ApiImageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Agent';

  static String? _$availability(Agent v) => v.availability;
  static const Field<Agent, String> _f$availability = Field(
    'availability',
    _$availability,
    opt: true,
  );
  static ApiImage? _$image(Agent v) => v.image;
  static const Field<Agent, ApiImage> _f$image = Field(
    'image',
    _$image,
    opt: true,
  );
  static String? _$name(Agent v) => v.name;
  static const Field<Agent, String> _f$name = Field('name', _$name, opt: true);
  static String? _$telephone(Agent v) => v.telephone;
  static const Field<Agent, String> _f$telephone = Field(
    'telephone',
    _$telephone,
    opt: true,
  );
  static String? _$text(Agent v) => v.text;
  static const Field<Agent, String> _f$text = Field('text', _$text, opt: true);
  static String? _$vita(Agent v) => v.vita;
  static const Field<Agent, String> _f$vita = Field('vita', _$vita, opt: true);

  @override
  final MappableFields<Agent> fields = const {
    #availability: _f$availability,
    #image: _f$image,
    #name: _f$name,
    #telephone: _f$telephone,
    #text: _f$text,
    #vita: _f$vita,
  };
  @override
  final bool ignoreNull = true;

  static Agent _instantiate(DecodingData data) {
    return Agent(
      availability: data.dec(_f$availability),
      image: data.dec(_f$image),
      name: data.dec(_f$name),
      telephone: data.dec(_f$telephone),
      text: data.dec(_f$text),
      vita: data.dec(_f$vita),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Agent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Agent>(map);
  }

  static Agent fromJson(String json) {
    return ensureInitialized().decodeJson<Agent>(json);
  }
}

mixin AgentMappable {
  String toJsonString() {
    return AgentMapper.ensureInitialized().encodeJson<Agent>(this as Agent);
  }

  Map<String, dynamic> toJson() {
    return AgentMapper.ensureInitialized().encodeMap<Agent>(this as Agent);
  }

  AgentCopyWith<Agent, Agent, Agent> get copyWith =>
      _AgentCopyWithImpl(this as Agent, $identity, $identity);
  @override
  String toString() {
    return AgentMapper.ensureInitialized().stringifyValue(this as Agent);
  }

  @override
  bool operator ==(Object other) {
    return AgentMapper.ensureInitialized().equalsValue(this as Agent, other);
  }

  @override
  int get hashCode {
    return AgentMapper.ensureInitialized().hashValue(this as Agent);
  }
}

extension AgentValueCopy<$R, $Out> on ObjectCopyWith<$R, Agent, $Out> {
  AgentCopyWith<$R, Agent, $Out> get $asAgent =>
      $base.as((v, t, t2) => _AgentCopyWithImpl(v, t, t2));
}

abstract class AgentCopyWith<$R, $In extends Agent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ApiImageCopyWith<$R, ApiImage, ApiImage>? get image;
  $R call({
    String? availability,
    ApiImage? image,
    String? name,
    String? telephone,
    String? text,
    String? vita,
  });
  AgentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AgentCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Agent, $Out>
    implements AgentCopyWith<$R, Agent, $Out> {
  _AgentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Agent> $mapper = AgentMapper.ensureInitialized();
  @override
  ApiImageCopyWith<$R, ApiImage, ApiImage>? get image =>
      $value.image?.copyWith.$chain((v) => call(image: v));
  @override
  $R call({
    Object? availability = $none,
    Object? image = $none,
    Object? name = $none,
    Object? telephone = $none,
    Object? text = $none,
    Object? vita = $none,
  }) => $apply(
    FieldCopyWithData({
      if (availability != $none) #availability: availability,
      if (image != $none) #image: image,
      if (name != $none) #name: name,
      if (telephone != $none) #telephone: telephone,
      if (text != $none) #text: text,
      if (vita != $none) #vita: vita,
    }),
  );
  @override
  Agent $make(CopyWithData data) => Agent(
    availability: data.get(#availability, or: $value.availability),
    image: data.get(#image, or: $value.image),
    name: data.get(#name, or: $value.name),
    telephone: data.get(#telephone, or: $value.telephone),
    text: data.get(#text, or: $value.text),
    vita: data.get(#vita, or: $value.vita),
  );

  @override
  AgentCopyWith<$R2, Agent, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AgentCopyWithImpl($value, $cast, t);
}
