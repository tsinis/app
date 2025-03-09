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
      BestOfferMapper.ensureInitialized();
      ApiImageMapper.ensureInitialized();
      RatingInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Hotel';

  static String _$hotelId(Hotel v) => v.hotelId;
  static const Field<Hotel, String> _f$hotelId = Field(
    'hotelId',
    _$hotelId,
    key: r'hotel-id',
  );
  static BestOffer? _$bestOffer(Hotel v) => v.bestOffer;
  static const Field<Hotel, BestOffer> _f$bestOffer = Field(
    'bestOffer',
    _$bestOffer,
    key: r'best-offer',
    opt: true,
  );
  static String? _$destination(Hotel v) => v.destination;
  static const Field<Hotel, String> _f$destination = Field(
    'destination',
    _$destination,
    opt: true,
  );
  static List<ApiImage?>? _$images(Hotel v) => v.images;
  static const Field<Hotel, List<ApiImage?>> _f$images = Field(
    'images',
    _$images,
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
    #hotelId: _f$hotelId,
    #bestOffer: _f$bestOffer,
    #destination: _f$destination,
    #images: _f$images,
    #name: _f$name,
    #ratingInfo: _f$ratingInfo,
  };
  @override
  final bool ignoreNull = true;

  static Hotel _instantiate(DecodingData data) {
    return Hotel(
      hotelId: data.dec(_f$hotelId),
      bestOffer: data.dec(_f$bestOffer),
      destination: data.dec(_f$destination),
      images: data.dec(_f$images),
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
  BestOfferCopyWith<$R, BestOffer, BestOffer>? get bestOffer;
  ListCopyWith<$R, ApiImage?, ApiImageCopyWith<$R, ApiImage, ApiImage>?>?
  get images;
  RatingInfoCopyWith<$R, RatingInfo, RatingInfo>? get ratingInfo;
  $R call({
    String? hotelId,
    BestOffer? bestOffer,
    String? destination,
    List<ApiImage?>? images,
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
    String? hotelId,
    Object? bestOffer = $none,
    Object? destination = $none,
    Object? images = $none,
    Object? name = $none,
    Object? ratingInfo = $none,
  }) => $apply(
    FieldCopyWithData({
      if (hotelId != null) #hotelId: hotelId,
      if (bestOffer != $none) #bestOffer: bestOffer,
      if (destination != $none) #destination: destination,
      if (images != $none) #images: images,
      if (name != $none) #name: name,
      if (ratingInfo != $none) #ratingInfo: ratingInfo,
    }),
  );
  @override
  Hotel $make(CopyWithData data) => Hotel(
    hotelId: data.get(#hotelId, or: $value.hotelId),
    bestOffer: data.get(#bestOffer, or: $value.bestOffer),
    destination: data.get(#destination, or: $value.destination),
    images: data.get(#images, or: $value.images),
    name: data.get(#name, or: $value.name),
    ratingInfo: data.get(#ratingInfo, or: $value.ratingInfo),
  );

  @override
  HotelCopyWith<$R2, Hotel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _HotelCopyWithImpl($value, $cast, t);
}
