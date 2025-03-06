// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_image.dart';

class ApiImageMapper extends ClassMapperBase<ApiImage> {
  ApiImageMapper._();

  static ApiImageMapper? _instance;
  static ApiImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiImageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApiImage';

  static String? _$large(ApiImage v) => v.large;
  static const Field<ApiImage, String> _f$large = Field(
    'large',
    _$large,
    opt: true,
  );
  static String? _$small(ApiImage v) => v.small;
  static const Field<ApiImage, String> _f$small = Field(
    'small',
    _$small,
    opt: true,
  );

  @override
  final MappableFields<ApiImage> fields = const {
    #large: _f$large,
    #small: _f$small,
  };
  @override
  final bool ignoreNull = true;

  static ApiImage _instantiate(DecodingData data) {
    return ApiImage(large: data.dec(_f$large), small: data.dec(_f$small));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiImage>(map);
  }

  static ApiImage fromJson(String json) {
    return ensureInitialized().decodeJson<ApiImage>(json);
  }
}

mixin ApiImageMappable {
  String toJsonString() {
    return ApiImageMapper.ensureInitialized().encodeJson<ApiImage>(
      this as ApiImage,
    );
  }

  Map<String, dynamic> toJson() {
    return ApiImageMapper.ensureInitialized().encodeMap<ApiImage>(
      this as ApiImage,
    );
  }

  ApiImageCopyWith<ApiImage, ApiImage, ApiImage> get copyWith =>
      _ApiImageCopyWithImpl(this as ApiImage, $identity, $identity);
  @override
  String toString() {
    return ApiImageMapper.ensureInitialized().stringifyValue(this as ApiImage);
  }

  @override
  bool operator ==(Object other) {
    return ApiImageMapper.ensureInitialized().equalsValue(
      this as ApiImage,
      other,
    );
  }

  @override
  int get hashCode {
    return ApiImageMapper.ensureInitialized().hashValue(this as ApiImage);
  }
}

extension ApiImageValueCopy<$R, $Out> on ObjectCopyWith<$R, ApiImage, $Out> {
  ApiImageCopyWith<$R, ApiImage, $Out> get $asApiImage =>
      $base.as((v, t, t2) => _ApiImageCopyWithImpl(v, t, t2));
}

abstract class ApiImageCopyWith<$R, $In extends ApiImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? large, String? small});
  ApiImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiImage, $Out>
    implements ApiImageCopyWith<$R, ApiImage, $Out> {
  _ApiImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiImage> $mapper =
      ApiImageMapper.ensureInitialized();
  @override
  $R call({Object? large = $none, Object? small = $none}) => $apply(
    FieldCopyWithData({
      if (large != $none) #large: large,
      if (small != $none) #small: small,
    }),
  );
  @override
  ApiImage $make(CopyWithData data) => ApiImage(
    large: data.get(#large, or: $value.large),
    small: data.get(#small, or: $value.small),
  );

  @override
  ApiImageCopyWith<$R2, ApiImage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiImageCopyWithImpl($value, $cast, t);
}
