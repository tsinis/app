// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'best_offer_available_special_groups.dart';

class BestOfferAvailableSpecialGroupsMapper
    extends EnumMapper<BestOfferAvailableSpecialGroups> {
  BestOfferAvailableSpecialGroupsMapper._();

  static BestOfferAvailableSpecialGroupsMapper? _instance;
  static BestOfferAvailableSpecialGroupsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = BestOfferAvailableSpecialGroupsMapper._(),
      );
    }
    return _instance!;
  }

  static BestOfferAvailableSpecialGroups fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BestOfferAvailableSpecialGroups decode(dynamic value) {
    switch (value) {
      case 'flexible':
        return BestOfferAvailableSpecialGroups.flexible;
      case 'promotion':
        return BestOfferAvailableSpecialGroups.promotion;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BestOfferAvailableSpecialGroups self) {
    switch (self) {
      case BestOfferAvailableSpecialGroups.flexible:
        return 'flexible';
      case BestOfferAvailableSpecialGroups.promotion:
        return 'promotion';
    }
  }
}

extension BestOfferAvailableSpecialGroupsMapperExtension
    on BestOfferAvailableSpecialGroups {
  dynamic toValue() {
    BestOfferAvailableSpecialGroupsMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BestOfferAvailableSpecialGroups>(
      this,
    );
  }
}
