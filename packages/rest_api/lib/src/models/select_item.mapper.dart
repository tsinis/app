// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'select_item.dart';

class SelectItemMapper extends ClassMapperBase<SelectItem> {
  SelectItemMapper._();

  static SelectItemMapper? _instance;
  static SelectItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectItemMapper._());
      CurrencyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SelectItem';

  static Currency? _$currency(SelectItem v) => v.currency;
  static const Field<SelectItem, Currency> _f$currency = Field(
    'currency',
    _$currency,
    opt: true,
  );
  static String? _$itemCategory(SelectItem v) => v.itemCategory;
  static const Field<SelectItem, String> _f$itemCategory = Field(
    'itemCategory',
    _$itemCategory,
    opt: true,
  );
  static String? _$itemCategory2(SelectItem v) => v.itemCategory2;
  static const Field<SelectItem, String> _f$itemCategory2 = Field(
    'itemCategory2',
    _$itemCategory2,
    opt: true,
  );
  static String? _$itemId(SelectItem v) => v.itemId;
  static const Field<SelectItem, String> _f$itemId = Field(
    'itemId',
    _$itemId,
    opt: true,
  );
  static String? _$itemListName(SelectItem v) => v.itemListName;
  static const Field<SelectItem, String> _f$itemListName = Field(
    'itemListName',
    _$itemListName,
    opt: true,
  );
  static String? _$itemName(SelectItem v) => v.itemName;
  static const Field<SelectItem, String> _f$itemName = Field(
    'itemName',
    _$itemName,
    opt: true,
  );
  static String? _$itemRooms(SelectItem v) => v.itemRooms;
  static const Field<SelectItem, String> _f$itemRooms = Field(
    'itemRooms',
    _$itemRooms,
    opt: true,
  );
  static String? _$price(SelectItem v) => v.price;
  static const Field<SelectItem, String> _f$price = Field(
    'price',
    _$price,
    opt: true,
  );
  static String? _$quantity(SelectItem v) => v.quantity;
  static const Field<SelectItem, String> _f$quantity = Field(
    'quantity',
    _$quantity,
    opt: true,
  );

  @override
  final MappableFields<SelectItem> fields = const {
    #currency: _f$currency,
    #itemCategory: _f$itemCategory,
    #itemCategory2: _f$itemCategory2,
    #itemId: _f$itemId,
    #itemListName: _f$itemListName,
    #itemName: _f$itemName,
    #itemRooms: _f$itemRooms,
    #price: _f$price,
    #quantity: _f$quantity,
  };
  @override
  final bool ignoreNull = true;

  static SelectItem _instantiate(DecodingData data) {
    return SelectItem(
      currency: data.dec(_f$currency),
      itemCategory: data.dec(_f$itemCategory),
      itemCategory2: data.dec(_f$itemCategory2),
      itemId: data.dec(_f$itemId),
      itemListName: data.dec(_f$itemListName),
      itemName: data.dec(_f$itemName),
      itemRooms: data.dec(_f$itemRooms),
      price: data.dec(_f$price),
      quantity: data.dec(_f$quantity),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SelectItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SelectItem>(map);
  }

  static SelectItem fromJson(String json) {
    return ensureInitialized().decodeJson<SelectItem>(json);
  }
}

mixin SelectItemMappable {
  String toJsonString() {
    return SelectItemMapper.ensureInitialized().encodeJson<SelectItem>(
      this as SelectItem,
    );
  }

  Map<String, dynamic> toJson() {
    return SelectItemMapper.ensureInitialized().encodeMap<SelectItem>(
      this as SelectItem,
    );
  }

  SelectItemCopyWith<SelectItem, SelectItem, SelectItem> get copyWith =>
      _SelectItemCopyWithImpl(this as SelectItem, $identity, $identity);
  @override
  String toString() {
    return SelectItemMapper.ensureInitialized().stringifyValue(
      this as SelectItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return SelectItemMapper.ensureInitialized().equalsValue(
      this as SelectItem,
      other,
    );
  }

  @override
  int get hashCode {
    return SelectItemMapper.ensureInitialized().hashValue(this as SelectItem);
  }
}

extension SelectItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SelectItem, $Out> {
  SelectItemCopyWith<$R, SelectItem, $Out> get $asSelectItem =>
      $base.as((v, t, t2) => _SelectItemCopyWithImpl(v, t, t2));
}

abstract class SelectItemCopyWith<$R, $In extends SelectItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    Currency? currency,
    String? itemCategory,
    String? itemCategory2,
    String? itemId,
    String? itemListName,
    String? itemName,
    String? itemRooms,
    String? price,
    String? quantity,
  });
  SelectItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SelectItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SelectItem, $Out>
    implements SelectItemCopyWith<$R, SelectItem, $Out> {
  _SelectItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SelectItem> $mapper =
      SelectItemMapper.ensureInitialized();
  @override
  $R call({
    Object? currency = $none,
    Object? itemCategory = $none,
    Object? itemCategory2 = $none,
    Object? itemId = $none,
    Object? itemListName = $none,
    Object? itemName = $none,
    Object? itemRooms = $none,
    Object? price = $none,
    Object? quantity = $none,
  }) => $apply(
    FieldCopyWithData({
      if (currency != $none) #currency: currency,
      if (itemCategory != $none) #itemCategory: itemCategory,
      if (itemCategory2 != $none) #itemCategory2: itemCategory2,
      if (itemId != $none) #itemId: itemId,
      if (itemListName != $none) #itemListName: itemListName,
      if (itemName != $none) #itemName: itemName,
      if (itemRooms != $none) #itemRooms: itemRooms,
      if (price != $none) #price: price,
      if (quantity != $none) #quantity: quantity,
    }),
  );
  @override
  SelectItem $make(CopyWithData data) => SelectItem(
    currency: data.get(#currency, or: $value.currency),
    itemCategory: data.get(#itemCategory, or: $value.itemCategory),
    itemCategory2: data.get(#itemCategory2, or: $value.itemCategory2),
    itemId: data.get(#itemId, or: $value.itemId),
    itemListName: data.get(#itemListName, or: $value.itemListName),
    itemName: data.get(#itemName, or: $value.itemName),
    itemRooms: data.get(#itemRooms, or: $value.itemRooms),
    price: data.get(#price, or: $value.price),
    quantity: data.get(#quantity, or: $value.quantity),
  );

  @override
  SelectItemCopyWith<$R2, SelectItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SelectItemCopyWithImpl($value, $cast, t);
}
