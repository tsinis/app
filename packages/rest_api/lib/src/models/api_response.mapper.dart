// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_response.dart';

class ApiResponseMapper extends ClassMapperBase<ApiResponse> {
  ApiResponseMapper._();

  static ApiResponseMapper? _instance;
  static ApiResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiResponseMapper._());
      HotelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiResponse';

  static List<Hotel?>? _$hotels(ApiResponse v) => v.hotels;
  static const Field<ApiResponse, List<Hotel?>> _f$hotels = Field(
    'hotels',
    _$hotels,
    opt: true,
  );

  @override
  final MappableFields<ApiResponse> fields = const {#hotels: _f$hotels};
  @override
  final bool ignoreNull = true;

  static ApiResponse _instantiate(DecodingData data) {
    return ApiResponse(hotels: data.dec(_f$hotels));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiResponse>(map);
  }

  static ApiResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ApiResponse>(json);
  }
}

mixin ApiResponseMappable {
  String toJsonString() {
    return ApiResponseMapper.ensureInitialized().encodeJson<ApiResponse>(
      this as ApiResponse,
    );
  }

  Map<String, dynamic> toJson() {
    return ApiResponseMapper.ensureInitialized().encodeMap<ApiResponse>(
      this as ApiResponse,
    );
  }

  ApiResponseCopyWith<ApiResponse, ApiResponse, ApiResponse> get copyWith =>
      _ApiResponseCopyWithImpl(this as ApiResponse, $identity, $identity);
  @override
  String toString() {
    return ApiResponseMapper.ensureInitialized().stringifyValue(
      this as ApiResponse,
    );
  }

  @override
  bool operator ==(Object other) {
    return ApiResponseMapper.ensureInitialized().equalsValue(
      this as ApiResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return ApiResponseMapper.ensureInitialized().hashValue(this as ApiResponse);
  }
}

extension ApiResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApiResponse, $Out> {
  ApiResponseCopyWith<$R, ApiResponse, $Out> get $asApiResponse =>
      $base.as((v, t, t2) => _ApiResponseCopyWithImpl(v, t, t2));
}

abstract class ApiResponseCopyWith<$R, $In extends ApiResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Hotel?, HotelCopyWith<$R, Hotel, Hotel>?>? get hotels;
  $R call({List<Hotel?>? hotels});
  ApiResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiResponse, $Out>
    implements ApiResponseCopyWith<$R, ApiResponse, $Out> {
  _ApiResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiResponse> $mapper =
      ApiResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Hotel?, HotelCopyWith<$R, Hotel, Hotel>?>? get hotels =>
      $value.hotels != null
          ? ListCopyWith(
            $value.hotels!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(hotels: v),
          )
          : null;
  @override
  $R call({Object? hotels = $none}) =>
      $apply(FieldCopyWithData({if (hotels != $none) #hotels: hotels}));
  @override
  ApiResponse $make(CopyWithData data) =>
      ApiResponse(hotels: data.get(#hotels, or: $value.hotels));

  @override
  ApiResponseCopyWith<$R2, ApiResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiResponseCopyWithImpl($value, $cast, t);
}
