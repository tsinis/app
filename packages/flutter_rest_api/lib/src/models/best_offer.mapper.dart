// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'best_offer.dart';

class BestOfferMapper extends ClassMapperBase<BestOffer> {
  BestOfferMapper._();

  static BestOfferMapper? _instance;
  static BestOfferMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BestOfferMapper._());
      BestOfferAvailableSpecialGroupsMapper.ensureInitialized();
      RoomsMapper.ensureInitialized();
      TravelDateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BestOffer';

  static num? _$appliedTravelDiscount(BestOffer v) => v.appliedTravelDiscount;
  static const Field<BestOffer, num> _f$appliedTravelDiscount = Field(
    'appliedTravelDiscount',
    _$appliedTravelDiscount,
    key: r'applied-travel-discount',
    opt: true,
  );
  static List<num?>? _$detailedPricePerPerson(BestOffer v) =>
      v.detailedPricePerPerson;
  static const Field<BestOffer, List<num?>> _f$detailedPricePerPerson = Field(
    'detailedPricePerPerson',
    _$detailedPricePerPerson,
    key: r'detailed-price-per-person',
    opt: true,
  );
  static num? _$includedTravelDiscount(BestOffer v) => v.includedTravelDiscount;
  static const Field<BestOffer, num> _f$includedTravelDiscount = Field(
    'includedTravelDiscount',
    _$includedTravelDiscount,
    key: r'included-travel-discount',
    opt: true,
  );
  static num? _$originalTravelPrice(BestOffer v) => v.originalTravelPrice;
  static const Field<BestOffer, num> _f$originalTravelPrice = Field(
    'originalTravelPrice',
    _$originalTravelPrice,
    key: r'original-travel-price',
    opt: true,
  );
  static num? _$simplePricePerPerson(BestOffer v) => v.simplePricePerPerson;
  static const Field<BestOffer, num> _f$simplePricePerPerson = Field(
    'simplePricePerPerson',
    _$simplePricePerPerson,
    key: r'simple-price-per-person',
    opt: true,
  );
  static num? _$total(BestOffer v) => v.total;
  static const Field<BestOffer, num> _f$total = Field(
    'total',
    _$total,
    opt: true,
  );
  static num? _$travelPrice(BestOffer v) => v.travelPrice;
  static const Field<BestOffer, num> _f$travelPrice = Field(
    'travelPrice',
    _$travelPrice,
    key: r'travel-price',
    opt: true,
  );
  static List<BestOfferAvailableSpecialGroups>? _$availableSpecialGroups(
    BestOffer v,
  ) => v.availableSpecialGroups;
  static const Field<BestOffer, List<BestOfferAvailableSpecialGroups>>
  _f$availableSpecialGroups = Field(
    'availableSpecialGroups',
    _$availableSpecialGroups,
    key: r'available-special-groups',
    opt: true,
  );
  static bool? _$flightIncluded(BestOffer v) => v.flightIncluded;
  static const Field<BestOffer, bool> _f$flightIncluded = Field(
    'flightIncluded',
    _$flightIncluded,
    key: r'flight-included',
    opt: true,
  );
  static Rooms? _$rooms(BestOffer v) => v.rooms;
  static const Field<BestOffer, Rooms> _f$rooms = Field(
    'rooms',
    _$rooms,
    opt: true,
  );
  static TravelDate? _$travelDate(BestOffer v) => v.travelDate;
  static const Field<BestOffer, TravelDate> _f$travelDate = Field(
    'travelDate',
    _$travelDate,
    key: r'travel-date',
    opt: true,
  );

  @override
  final MappableFields<BestOffer> fields = const {
    #appliedTravelDiscount: _f$appliedTravelDiscount,
    #detailedPricePerPerson: _f$detailedPricePerPerson,
    #includedTravelDiscount: _f$includedTravelDiscount,
    #originalTravelPrice: _f$originalTravelPrice,
    #simplePricePerPerson: _f$simplePricePerPerson,
    #total: _f$total,
    #travelPrice: _f$travelPrice,
    #availableSpecialGroups: _f$availableSpecialGroups,
    #flightIncluded: _f$flightIncluded,
    #rooms: _f$rooms,
    #travelDate: _f$travelDate,
  };
  @override
  final bool ignoreNull = true;

  static BestOffer _instantiate(DecodingData data) {
    return BestOffer(
      appliedTravelDiscount: data.dec(_f$appliedTravelDiscount),
      detailedPricePerPerson: data.dec(_f$detailedPricePerPerson),
      includedTravelDiscount: data.dec(_f$includedTravelDiscount),
      originalTravelPrice: data.dec(_f$originalTravelPrice),
      simplePricePerPerson: data.dec(_f$simplePricePerPerson),
      total: data.dec(_f$total),
      travelPrice: data.dec(_f$travelPrice),
      availableSpecialGroups: data.dec(_f$availableSpecialGroups),
      flightIncluded: data.dec(_f$flightIncluded),
      rooms: data.dec(_f$rooms),
      travelDate: data.dec(_f$travelDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BestOffer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BestOffer>(map);
  }

  static BestOffer fromJson(String json) {
    return ensureInitialized().decodeJson<BestOffer>(json);
  }
}

mixin BestOfferMappable {
  String toJsonString() {
    return BestOfferMapper.ensureInitialized().encodeJson<BestOffer>(
      this as BestOffer,
    );
  }

  Map<String, dynamic> toJson() {
    return BestOfferMapper.ensureInitialized().encodeMap<BestOffer>(
      this as BestOffer,
    );
  }

  BestOfferCopyWith<BestOffer, BestOffer, BestOffer> get copyWith =>
      _BestOfferCopyWithImpl(this as BestOffer, $identity, $identity);
  @override
  String toString() {
    return BestOfferMapper.ensureInitialized().stringifyValue(
      this as BestOffer,
    );
  }

  @override
  bool operator ==(Object other) {
    return BestOfferMapper.ensureInitialized().equalsValue(
      this as BestOffer,
      other,
    );
  }

  @override
  int get hashCode {
    return BestOfferMapper.ensureInitialized().hashValue(this as BestOffer);
  }
}

extension BestOfferValueCopy<$R, $Out> on ObjectCopyWith<$R, BestOffer, $Out> {
  BestOfferCopyWith<$R, BestOffer, $Out> get $asBestOffer =>
      $base.as((v, t, t2) => _BestOfferCopyWithImpl(v, t, t2));
}

abstract class BestOfferCopyWith<$R, $In extends BestOffer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>?
  get detailedPricePerPerson;
  ListCopyWith<
    $R,
    BestOfferAvailableSpecialGroups,
    ObjectCopyWith<
      $R,
      BestOfferAvailableSpecialGroups,
      BestOfferAvailableSpecialGroups
    >
  >?
  get availableSpecialGroups;
  RoomsCopyWith<$R, Rooms, Rooms>? get rooms;
  TravelDateCopyWith<$R, TravelDate, TravelDate>? get travelDate;
  $R call({
    num? appliedTravelDiscount,
    List<num?>? detailedPricePerPerson,
    num? includedTravelDiscount,
    num? originalTravelPrice,
    num? simplePricePerPerson,
    num? total,
    num? travelPrice,
    List<BestOfferAvailableSpecialGroups>? availableSpecialGroups,
    bool? flightIncluded,
    Rooms? rooms,
    TravelDate? travelDate,
  });
  BestOfferCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BestOfferCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BestOffer, $Out>
    implements BestOfferCopyWith<$R, BestOffer, $Out> {
  _BestOfferCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BestOffer> $mapper =
      BestOfferMapper.ensureInitialized();
  @override
  ListCopyWith<$R, num?, ObjectCopyWith<$R, num?, num?>?>?
  get detailedPricePerPerson =>
      $value.detailedPricePerPerson != null
          ? ListCopyWith(
            $value.detailedPricePerPerson!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(detailedPricePerPerson: v),
          )
          : null;
  @override
  ListCopyWith<
    $R,
    BestOfferAvailableSpecialGroups,
    ObjectCopyWith<
      $R,
      BestOfferAvailableSpecialGroups,
      BestOfferAvailableSpecialGroups
    >
  >?
  get availableSpecialGroups =>
      $value.availableSpecialGroups != null
          ? ListCopyWith(
            $value.availableSpecialGroups!,
            (v, t) => ObjectCopyWith(v, $identity, t),
            (v) => call(availableSpecialGroups: v),
          )
          : null;
  @override
  RoomsCopyWith<$R, Rooms, Rooms>? get rooms =>
      $value.rooms?.copyWith.$chain((v) => call(rooms: v));
  @override
  TravelDateCopyWith<$R, TravelDate, TravelDate>? get travelDate =>
      $value.travelDate?.copyWith.$chain((v) => call(travelDate: v));
  @override
  $R call({
    Object? appliedTravelDiscount = $none,
    Object? detailedPricePerPerson = $none,
    Object? includedTravelDiscount = $none,
    Object? originalTravelPrice = $none,
    Object? simplePricePerPerson = $none,
    Object? total = $none,
    Object? travelPrice = $none,
    Object? availableSpecialGroups = $none,
    Object? flightIncluded = $none,
    Object? rooms = $none,
    Object? travelDate = $none,
  }) => $apply(
    FieldCopyWithData({
      if (appliedTravelDiscount != $none)
        #appliedTravelDiscount: appliedTravelDiscount,
      if (detailedPricePerPerson != $none)
        #detailedPricePerPerson: detailedPricePerPerson,
      if (includedTravelDiscount != $none)
        #includedTravelDiscount: includedTravelDiscount,
      if (originalTravelPrice != $none)
        #originalTravelPrice: originalTravelPrice,
      if (simplePricePerPerson != $none)
        #simplePricePerPerson: simplePricePerPerson,
      if (total != $none) #total: total,
      if (travelPrice != $none) #travelPrice: travelPrice,
      if (availableSpecialGroups != $none)
        #availableSpecialGroups: availableSpecialGroups,
      if (flightIncluded != $none) #flightIncluded: flightIncluded,
      if (rooms != $none) #rooms: rooms,
      if (travelDate != $none) #travelDate: travelDate,
    }),
  );
  @override
  BestOffer $make(CopyWithData data) => BestOffer(
    appliedTravelDiscount: data.get(
      #appliedTravelDiscount,
      or: $value.appliedTravelDiscount,
    ),
    detailedPricePerPerson: data.get(
      #detailedPricePerPerson,
      or: $value.detailedPricePerPerson,
    ),
    includedTravelDiscount: data.get(
      #includedTravelDiscount,
      or: $value.includedTravelDiscount,
    ),
    originalTravelPrice: data.get(
      #originalTravelPrice,
      or: $value.originalTravelPrice,
    ),
    simplePricePerPerson: data.get(
      #simplePricePerPerson,
      or: $value.simplePricePerPerson,
    ),
    total: data.get(#total, or: $value.total),
    travelPrice: data.get(#travelPrice, or: $value.travelPrice),
    availableSpecialGroups: data.get(
      #availableSpecialGroups,
      or: $value.availableSpecialGroups,
    ),
    flightIncluded: data.get(#flightIncluded, or: $value.flightIncluded),
    rooms: data.get(#rooms, or: $value.rooms),
    travelDate: data.get(#travelDate, or: $value.travelDate),
  );

  @override
  BestOfferCopyWith<$R2, BestOffer, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BestOfferCopyWithImpl($value, $cast, t);
}
