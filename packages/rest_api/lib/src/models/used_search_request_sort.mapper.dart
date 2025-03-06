// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'used_search_request_sort.dart';

class UsedSearchRequestSortMapper extends EnumMapper<UsedSearchRequestSort> {
  UsedSearchRequestSortMapper._();

  static UsedSearchRequestSortMapper? _instance;
  static UsedSearchRequestSortMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UsedSearchRequestSortMapper._());
    }
    return _instance!;
  }

  static UsedSearchRequestSort fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  UsedSearchRequestSort decode(dynamic value) {
    switch (value) {
      case 'POPULAR_DESC':
        return UsedSearchRequestSort.popularDesc;
      case 'POPULAR_ASC':
        return UsedSearchRequestSort.popularAsc;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(UsedSearchRequestSort self) {
    switch (self) {
      case UsedSearchRequestSort.popularDesc:
        return 'POPULAR_DESC';
      case UsedSearchRequestSort.popularAsc:
        return 'POPULAR_ASC';
    }
  }
}

extension UsedSearchRequestSortMapperExtension on UsedSearchRequestSort {
  dynamic toValue() {
    UsedSearchRequestSortMapper.ensureInitialized();
    return MapperContainer.globals.toValue<UsedSearchRequestSort>(this);
  }
}
