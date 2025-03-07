// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'filter_type.dart';

class FilterTypeMapper extends EnumMapper<FilterType> {
  FilterTypeMapper._();

  static FilterTypeMapper? _instance;
  static FilterTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterTypeMapper._());
    }
    return _instance!;
  }

  static FilterType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  FilterType decode(dynamic value) {
    switch (value) {
      case 'checkbox':
        return FilterType.checkbox;
      case 'range':
        return FilterType.range;
      case 'radio':
        return FilterType.radio;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(FilterType self) {
    switch (self) {
      case FilterType.checkbox:
        return 'checkbox';
      case FilterType.range:
        return 'range';
      case FilterType.radio:
        return 'radio';
    }
  }
}

extension FilterTypeMapperExtension on FilterType {
  dynamic toValue() {
    FilterTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<FilterType>(this);
  }
}
