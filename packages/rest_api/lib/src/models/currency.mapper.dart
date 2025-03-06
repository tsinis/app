// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'currency.dart';

class CurrencyMapper extends EnumMapper<Currency> {
  CurrencyMapper._();

  static CurrencyMapper? _instance;
  static CurrencyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CurrencyMapper._());
    }
    return _instance!;
  }

  static Currency fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Currency decode(dynamic value) {
    switch (value) {
      case 'EUR':
        return Currency.eur;
      case 'USD':
        return Currency.usd;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Currency self) {
    switch (self) {
      case Currency.eur:
        return 'EUR';
      case Currency.usd:
        return 'USD';
    }
  }
}

extension CurrencyMapperExtension on Currency {
  dynamic toValue() {
    CurrencyMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Currency>(this);
  }
}
