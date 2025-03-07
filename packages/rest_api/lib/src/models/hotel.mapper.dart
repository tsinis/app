// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'hotel.dart';

class HotelMapper extends ClassMapperBase<Hotel> {
  HotelMapper._();

  static HotelMapper? _instance;
  static HotelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HotelMapper._());
      AnalyticsMapper.ensureInitialized();
      BestOfferMapper.ensureInitialized();
      ApiImageMapper.ensureInitialized();
      RatingInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Hotel';

  static Analytics? _$analytics(Hotel v) => v.analytics;
  static const Field<Hotel, Analytics> _f$analytics = Field(
    'analytics',
    _$analytics,
    opt: true,
  );
  static List<String?>? _$badges(Hotel v) => v.badges;
  static const Field<Hotel, List<String?>> _f$badges = Field(
    'badges',
    _$badges,
    opt: true,
  );
  static BestOffer? _$bestOffer(Hotel v) => v.bestOffer;
  static const Field<Hotel, BestOffer> _f$bestOffer = Field(
    'bestOffer',
    _$bestOffer,
    key: r'best-offer',
    opt: true,
  );
  static int? _$category(Hotel v) => v.category;
  static const Field<Hotel, int> _f$category = Field(
    'category',
    _$category,
    opt: true,
  );
  static String? _$categoryType(Hotel v) => v.categoryType;
  static const Field<Hotel, String> _f$categoryType = Field(
    'categoryType',
    _$categoryType,
    key: r'category-type',
    opt: true,
  );
  static String? _$destination(Hotel v) => v.destination;
  static const Field<Hotel, String> _f$destination = Field(
    'destination',
    _$destination,
    opt: true,
  );
  static String? _$hotelId(Hotel v) => v.hotelId;
  static const Field<Hotel, String> _f$hotelId = Field(
    'hotelId',
    _$hotelId,
    key: r'hotel-id',
    opt: true,
  );
  static List<ApiImage?>? _$images(Hotel v) => v.images;
  static const Field<Hotel, List<ApiImage?>> _f$images = Field(
    'images',
    _$images,
    opt: true,
  );
  static double? _$latitude(Hotel v) => v.latitude;
  static const Field<Hotel, double> _f$latitude = Field(
    'latitude',
    _$latitude,
    opt: true,
  );
  static double? _$longitude(Hotel v) => v.longitude;
  static const Field<Hotel, double> _f$longitude = Field(
    'longitude',
    _$longitude,
    opt: true,
  );
  static String? _$name(Hotel v) => v.name;
  static const Field<Hotel, String> _f$name = Field('name', _$name, opt: true);
  static RatingInfo? _$ratingInfo(Hotel v) => v.ratingInfo;
  static const Field<Hotel, RatingInfo> _f$ratingInfo = Field(
    'ratingInfo',
    _$ratingInfo,
    key: r'rating-info',
    opt: true,
  );

  @override
  final MappableFields<Hotel> fields = const {
    #analytics: _f$analytics,
    #badges: _f$badges,
    #bestOffer: _f$bestOffer,
    #category: _f$category,
    #categoryType: _f$categoryType,
    #destination: _f$destination,
    #hotelId: _f$hotelId,
    #images: _f$images,
    #latitude: _f$latitude,
    #longitude: _f$longitude,
    #name: _f$name,
    #ratingInfo: _f$ratingInfo,
  };
  @override
  final bool ignoreNull = true;

  static Hotel _instantiate(DecodingData data) {
    return Hotel(
      analytics: data.dec(_f$analytics),
      badges: data.dec(_f$badges),
      bestOffer: data.dec(_f$bestOffer),
      category: data.dec(_f$category),
      categoryType: data.dec(_f$categoryType),
      destination: data.dec(_f$destination),
      hotelId: data.dec(_f$hotelId),
      images: data.dec(_f$images),
      latitude: data.dec(_f$latitude),
      longitude: data.dec(_f$longitude),
      name: data.dec(_f$name),
      ratingInfo: data.dec(_f$ratingInfo),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Hotel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Hotel>(map);
  }

  static Hotel fromJson(String json) {
    return ensureInitialized().decodeJson<Hotel>(json);
  }
}

mixin HotelMappable {
  String toJsonString() {
    return HotelMapper.ensureInitialized().encodeJson<Hotel>(this as Hotel);
  }

  Map<String, dynamic> toJson() {
    return HotelMapper.ensureInitialized().encodeMap<Hotel>(this as Hotel);
  }

  HotelCopyWith<Hotel, Hotel, Hotel> get copyWith =>
      _HotelCopyWithImpl(this as Hotel, $identity, $identity);
  @override
  String toString() {
    return HotelMapper.ensureInitialized().stringifyValue(this as Hotel);
  }

  @override
  bool operator ==(Object other) {
    return HotelMapper.ensureInitialized().equalsValue(this as Hotel, other);
  }

  @override
  int get hashCode {
    return HotelMapper.ensureInitialized().hashValue(this as Hotel);
  }
}

extension HotelValueCopy<$R, $Out> on ObjectCopyWith<$R, Hotel, $Out> {
  HotelCopyWith<$R, Hotel, $Out> get $asHotel =>
      $base.as((v, t, t2) => _HotelCopyWithImpl(v, t, t2));
}

abstract class HotelCopyWith<$R, $In extends Hotel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  AnalyticsCopyWith<$R, Analytics, Analytics>? get analytics;
  ListCopyWith<$R, String?, ObjectCopyWith<$R, String?, String?>?>? get badges;
  BestOfferCopyWith<$R, BestOffer, BestOffer>? get bestOffer;
  ListCopyWith<$R, ApiImage?, ApiImageCopyWith<$R, ApiImage, ApiImage>?>?
  get images;
  RatingInfoCopyWith<$R, RatingInfo, RatingInfo>? get ratingInfo;
  $R call({
    Analytics? analytics,
    List<String?>? badges,
    BestOffer? bestOffer,
    int? category,
    String? categoryType,
    String? destination,
    String? hotelId,
    List<ApiImage?>? images,
    double? latitude,
    double? longitude,
    String? name,
    RatingInfo? ratingInfo,
  });
  HotelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HotelCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Hotel, $Out>
    implements HotelCopyWith<$R, Hotel, $Out> {
  _HotelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Hotel> $mapper = HotelMapper.ensureInitialized();
  @override
  AnalyticsCopyWith<$R, Analytics, Analytics>? get analytics =>
      $value.analytics?.copyWith.$chain((v) => call(analytics: v));
  @override
  ListCopyWith<$R, String?, ObjectCopyWith<$R, String?, String?>?>?
  get badges =>
      $value.badges != null
          ? ListCopyWith(
            $value.badges!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(badges: v),
          )
          : null;
  @override
  BestOfferCopyWith<$R, BestOffer, BestOffer>? get bestOffer =>
      $value.bestOffer?.copyWith.$chain((v) => call(bestOffer: v));
  @override
  ListCopyWith<$R, ApiImage?, ApiImageCopyWith<$R, ApiImage, ApiImage>?>?
  get images =>
      $value.images != null
          ? ListCopyWith(
            $value.images!,
            (v, t) => v?.copyWith.$chain(t),
            (v) => call(images: v),
          )
          : null;
  @override
  RatingInfoCopyWith<$R, RatingInfo, RatingInfo>? get ratingInfo =>
      $value.ratingInfo?.copyWith.$chain((v) => call(ratingInfo: v));
  @override
  $R call({
    Object? analytics = $none,
    Object? badges = $none,
    Object? bestOffer = $none,
    Object? category = $none,
    Object? categoryType = $none,
    Object? destination = $none,
    Object? hotelId = $none,
    Object? images = $none,
    Object? latitude = $none,
    Object? longitude = $none,
    Object? name = $none,
    Object? ratingInfo = $none,
  }) => $apply(
    FieldCopyWithData({
      if (analytics != $none) #analytics: analytics,
      if (badges != $none) #badges: badges,
      if (bestOffer != $none) #bestOffer: bestOffer,
      if (category != $none) #category: category,
      if (categoryType != $none) #categoryType: categoryType,
      if (destination != $none) #destination: destination,
      if (hotelId != $none) #hotelId: hotelId,
      if (images != $none) #images: images,
      if (latitude != $none) #latitude: latitude,
      if (longitude != $none) #longitude: longitude,
      if (name != $none) #name: name,
      if (ratingInfo != $none) #ratingInfo: ratingInfo,
    }),
  );
  @override
  Hotel $make(CopyWithData data) => Hotel(
    analytics: data.get(#analytics, or: $value.analytics),
    badges: data.get(#badges, or: $value.badges),
    bestOffer: data.get(#bestOffer, or: $value.bestOffer),
    category: data.get(#category, or: $value.category),
    categoryType: data.get(#categoryType, or: $value.categoryType),
    destination: data.get(#destination, or: $value.destination),
    hotelId: data.get(#hotelId, or: $value.hotelId),
    images: data.get(#images, or: $value.images),
    latitude: data.get(#latitude, or: $value.latitude),
    longitude: data.get(#longitude, or: $value.longitude),
    name: data.get(#name, or: $value.name),
    ratingInfo: data.get(#ratingInfo, or: $value.ratingInfo),
  );

  @override
  HotelCopyWith<$R2, Hotel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _HotelCopyWithImpl($value, $cast, t);
}
