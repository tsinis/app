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
      FilterMapper.ensureInitialized();
      MetaMapper.ensureInitialized();
      HotelMapper.ensureInitialized();
      UsedSearchRequestMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiResponse';

  static List<Filter?>? _$filters(ApiResponse v) => v.filters;
  static const Field<ApiResponse, List<Filter?>> _f$filters = Field(
    'filters',
    _$filters,
    opt: true,
  );
  static int? _$hotelCount(ApiResponse v) => v.hotelCount;
  static const Field<ApiResponse, int> _f$hotelCount = Field(
    'hotelCount',
    _$hotelCount,
    key: r'hotel-count',
    opt: true,
  );
  static Meta? _$meta(ApiResponse v) => v.meta;
  static const Field<ApiResponse, Meta> _f$meta = Field(
    'meta',
    _$meta,
    opt: true,
  );
  static List<Hotel?>? _$hotels(ApiResponse v) => v.hotels;
  static const Field<ApiResponse, List<Hotel?>> _f$hotels = Field(
    'hotels',
    _$hotels,
    opt: true,
  );
  static UsedSearchRequest? _$usedSearchRequest(ApiResponse v) =>
      v.usedSearchRequest;
  static const Field<ApiResponse, UsedSearchRequest> _f$usedSearchRequest =
      Field(
        'usedSearchRequest',
        _$usedSearchRequest,
        key: r'used-search-request',
        opt: true,
      );

  @override
  final MappableFields<ApiResponse> fields = const {
    #filters: _f$filters,
    #hotelCount: _f$hotelCount,
    #meta: _f$meta,
    #hotels: _f$hotels,
    #usedSearchRequest: _f$usedSearchRequest,
  };
  @override
  final bool ignoreNull = true;

  static ApiResponse _instantiate(DecodingData data) {
    return ApiResponse(
      filters: data.dec(_f$filters),
      hotelCount: data.dec(_f$hotelCount),
      meta: data.dec(_f$meta),
      hotels: data.dec(_f$hotels),
      usedSearchRequest: data.dec(_f$usedSearchRequest),
    );
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
  ListCopyWith<$R, Filter?, FilterCopyWith<$R, Filter, Filter>?>? get filters;
  MetaCopyWith<$R, Meta, Meta>? get meta;
  ListCopyWith<$R, Hotel?, HotelCopyWith<$R, Hotel, Hotel>?>? get hotels;
  UsedSearchRequestCopyWith<$R, UsedSearchRequest, UsedSearchRequest>?
  get usedSearchRequest;
  $R call({
    List<Filter?>? filters,
    int? hotelCount,
    Meta? meta,
    List<Hotel?>? hotels,
    UsedSearchRequest? usedSearchRequest,
  });
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
  ListCopyWith<$R, Filter?, FilterCopyWith<$R, Filter, Filter>?>? get filters =>
      $value.filters != null
          ? ListCopyWith(
            $value.filters!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(filters: v),
          )
          : null;
  @override
  MetaCopyWith<$R, Meta, Meta>? get meta =>
      $value.meta?.copyWith.$chain((v) => call(meta: v));
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
  UsedSearchRequestCopyWith<$R, UsedSearchRequest, UsedSearchRequest>?
  get usedSearchRequest => $value.usedSearchRequest?.copyWith.$chain(
    (v) => call(usedSearchRequest: v),
  );
  @override
  $R call({
    Object? filters = $none,
    Object? hotelCount = $none,
    Object? meta = $none,
    Object? hotels = $none,
    Object? usedSearchRequest = $none,
  }) => $apply(
    FieldCopyWithData({
      if (filters != $none) #filters: filters,
      if (hotelCount != $none) #hotelCount: hotelCount,
      if (meta != $none) #meta: meta,
      if (hotels != $none) #hotels: hotels,
      if (usedSearchRequest != $none) #usedSearchRequest: usedSearchRequest,
    }),
  );
  @override
  ApiResponse $make(CopyWithData data) => ApiResponse(
    filters: data.get(#filters, or: $value.filters),
    hotelCount: data.get(#hotelCount, or: $value.hotelCount),
    meta: data.get(#meta, or: $value.meta),
    hotels: data.get(#hotels, or: $value.hotels),
    usedSearchRequest: data.get(
      #usedSearchRequest,
      or: $value.usedSearchRequest,
    ),
  );

  @override
  ApiResponseCopyWith<$R2, ApiResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ApiResponseCopyWithImpl($value, $cast, t);
}
