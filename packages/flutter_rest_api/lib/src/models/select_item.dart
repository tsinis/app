// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dart_mappable/dart_mappable.dart';

import 'currency.dart';

part 'select_item.mapper.dart';

@MappableClass()
class SelectItem with SelectItemMappable {
  const SelectItem({
    this.currency,
    this.itemCategory,
    this.itemCategory2,
    this.itemId,
    this.itemListName,
    this.itemName,
    this.itemRooms,
    this.price,
    this.quantity,
  });

  final Currency? currency;
  final String? itemCategory;
  final String? itemCategory2;
  final String? itemId;
  final String? itemListName;
  final String? itemName;
  final String? itemRooms;
  final String? price;
  final String? quantity;

  static SelectItem fromJson(Map<String, dynamic> json) =>
      SelectItemMapper.ensureInitialized().decodeMap<SelectItem>(json);
}
