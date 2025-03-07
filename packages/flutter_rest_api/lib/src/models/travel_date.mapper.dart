// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'travel_date.dart';

class TravelDateMapper extends ClassMapperBase<TravelDate> {
  TravelDateMapper._();

  static TravelDateMapper? _instance;
  static TravelDateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TravelDateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TravelDate';

  static num? _$days(TravelDate v) => v.days;
  static const Field<TravelDate, num> _f$days = Field(
    'days',
    _$days,
    opt: true,
  );
  static DateTime? _$departureDate(TravelDate v) => v.departureDate;
  static const Field<TravelDate, DateTime> _f$departureDate = Field(
    'departureDate',
    _$departureDate,
    key: r'departure-date',
    opt: true,
  );
  static num? _$nights(TravelDate v) => v.nights;
  static const Field<TravelDate, num> _f$nights = Field(
    'nights',
    _$nights,
    opt: true,
  );
  static DateTime? _$returnDate(TravelDate v) => v.returnDate;
  static const Field<TravelDate, DateTime> _f$returnDate = Field(
    'returnDate',
    _$returnDate,
    key: r'return-date',
    opt: true,
  );

  @override
  final MappableFields<TravelDate> fields = const {
    #days: _f$days,
    #departureDate: _f$departureDate,
    #nights: _f$nights,
    #returnDate: _f$returnDate,
  };
  @override
  final bool ignoreNull = true;

  static TravelDate _instantiate(DecodingData data) {
    return TravelDate(
      days: data.dec(_f$days),
      departureDate: data.dec(_f$departureDate),
      nights: data.dec(_f$nights),
      returnDate: data.dec(_f$returnDate),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TravelDate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TravelDate>(map);
  }

  static TravelDate fromJson(String json) {
    return ensureInitialized().decodeJson<TravelDate>(json);
  }
}

mixin TravelDateMappable {
  String toJsonString() {
    return TravelDateMapper.ensureInitialized().encodeJson<TravelDate>(
      this as TravelDate,
    );
  }

  Map<String, dynamic> toJson() {
    return TravelDateMapper.ensureInitialized().encodeMap<TravelDate>(
      this as TravelDate,
    );
  }

  TravelDateCopyWith<TravelDate, TravelDate, TravelDate> get copyWith =>
      _TravelDateCopyWithImpl(this as TravelDate, $identity, $identity);
  @override
  String toString() {
    return TravelDateMapper.ensureInitialized().stringifyValue(
      this as TravelDate,
    );
  }

  @override
  bool operator ==(Object other) {
    return TravelDateMapper.ensureInitialized().equalsValue(
      this as TravelDate,
      other,
    );
  }

  @override
  int get hashCode {
    return TravelDateMapper.ensureInitialized().hashValue(this as TravelDate);
  }
}

extension TravelDateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TravelDate, $Out> {
  TravelDateCopyWith<$R, TravelDate, $Out> get $asTravelDate =>
      $base.as((v, t, t2) => _TravelDateCopyWithImpl(v, t, t2));
}

abstract class TravelDateCopyWith<$R, $In extends TravelDate, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    num? days,
    DateTime? departureDate,
    num? nights,
    DateTime? returnDate,
  });
  TravelDateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TravelDateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TravelDate, $Out>
    implements TravelDateCopyWith<$R, TravelDate, $Out> {
  _TravelDateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TravelDate> $mapper =
      TravelDateMapper.ensureInitialized();
  @override
  $R call({
    Object? days = $none,
    Object? departureDate = $none,
    Object? nights = $none,
    Object? returnDate = $none,
  }) => $apply(
    FieldCopyWithData({
      if (days != $none) #days: days,
      if (departureDate != $none) #departureDate: departureDate,
      if (nights != $none) #nights: nights,
      if (returnDate != $none) #returnDate: returnDate,
    }),
  );
  @override
  TravelDate $make(CopyWithData data) => TravelDate(
    days: data.get(#days, or: $value.days),
    departureDate: data.get(#departureDate, or: $value.departureDate),
    nights: data.get(#nights, or: $value.nights),
    returnDate: data.get(#returnDate, or: $value.returnDate),
  );

  @override
  TravelDateCopyWith<$R2, TravelDate, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TravelDateCopyWithImpl($value, $cast, t);
}
