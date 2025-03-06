// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'rating_info.dart';

class RatingInfoMapper extends ClassMapperBase<RatingInfo> {
  RatingInfoMapper._();

  static RatingInfoMapper? _instance;
  static RatingInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RatingInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RatingInfo';

  static num? _$recommendationRate(RatingInfo v) => v.recommendationRate;
  static const Field<RatingInfo, num> _f$recommendationRate = Field(
    'recommendationRate',
    _$recommendationRate,
    key: r'recommendation-rate',
    opt: true,
  );
  static int? _$reviewsCount(RatingInfo v) => v.reviewsCount;
  static const Field<RatingInfo, int> _f$reviewsCount = Field(
    'reviewsCount',
    _$reviewsCount,
    key: r'reviews-count',
    opt: true,
  );
  static num? _$score(RatingInfo v) => v.score;
  static const Field<RatingInfo, num> _f$score = Field(
    'score',
    _$score,
    opt: true,
  );
  static String? _$scoreDescription(RatingInfo v) => v.scoreDescription;
  static const Field<RatingInfo, String> _f$scoreDescription = Field(
    'scoreDescription',
    _$scoreDescription,
    key: r'score-description',
    opt: true,
  );

  @override
  final MappableFields<RatingInfo> fields = const {
    #recommendationRate: _f$recommendationRate,
    #reviewsCount: _f$reviewsCount,
    #score: _f$score,
    #scoreDescription: _f$scoreDescription,
  };
  @override
  final bool ignoreNull = true;

  static RatingInfo _instantiate(DecodingData data) {
    return RatingInfo(
      recommendationRate: data.dec(_f$recommendationRate),
      reviewsCount: data.dec(_f$reviewsCount),
      score: data.dec(_f$score),
      scoreDescription: data.dec(_f$scoreDescription),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static RatingInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RatingInfo>(map);
  }

  static RatingInfo fromJson(String json) {
    return ensureInitialized().decodeJson<RatingInfo>(json);
  }
}

mixin RatingInfoMappable {
  String toJsonString() {
    return RatingInfoMapper.ensureInitialized().encodeJson<RatingInfo>(
      this as RatingInfo,
    );
  }

  Map<String, dynamic> toJson() {
    return RatingInfoMapper.ensureInitialized().encodeMap<RatingInfo>(
      this as RatingInfo,
    );
  }

  RatingInfoCopyWith<RatingInfo, RatingInfo, RatingInfo> get copyWith =>
      _RatingInfoCopyWithImpl(this as RatingInfo, $identity, $identity);
  @override
  String toString() {
    return RatingInfoMapper.ensureInitialized().stringifyValue(
      this as RatingInfo,
    );
  }

  @override
  bool operator ==(Object other) {
    return RatingInfoMapper.ensureInitialized().equalsValue(
      this as RatingInfo,
      other,
    );
  }

  @override
  int get hashCode {
    return RatingInfoMapper.ensureInitialized().hashValue(this as RatingInfo);
  }
}

extension RatingInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RatingInfo, $Out> {
  RatingInfoCopyWith<$R, RatingInfo, $Out> get $asRatingInfo =>
      $base.as((v, t, t2) => _RatingInfoCopyWithImpl(v, t, t2));
}

abstract class RatingInfoCopyWith<$R, $In extends RatingInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    num? recommendationRate,
    int? reviewsCount,
    num? score,
    String? scoreDescription,
  });
  RatingInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RatingInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RatingInfo, $Out>
    implements RatingInfoCopyWith<$R, RatingInfo, $Out> {
  _RatingInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RatingInfo> $mapper =
      RatingInfoMapper.ensureInitialized();
  @override
  $R call({
    Object? recommendationRate = $none,
    Object? reviewsCount = $none,
    Object? score = $none,
    Object? scoreDescription = $none,
  }) => $apply(
    FieldCopyWithData({
      if (recommendationRate != $none) #recommendationRate: recommendationRate,
      if (reviewsCount != $none) #reviewsCount: reviewsCount,
      if (score != $none) #score: score,
      if (scoreDescription != $none) #scoreDescription: scoreDescription,
    }),
  );
  @override
  RatingInfo $make(CopyWithData data) => RatingInfo(
    recommendationRate: data.get(
      #recommendationRate,
      or: $value.recommendationRate,
    ),
    reviewsCount: data.get(#reviewsCount, or: $value.reviewsCount),
    score: data.get(#score, or: $value.score),
    scoreDescription: data.get(#scoreDescription, or: $value.scoreDescription),
  );

  @override
  RatingInfoCopyWith<$R2, RatingInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _RatingInfoCopyWithImpl($value, $cast, t);
}
