import 'package:rest_api/hotels_api.dart' show Hotel, ModelMapper;

class HotelsMapper extends ModelMapper<String, Hotel> {
  const HotelsMapper();

  @override
  String mapItem(Hotel item) => item.images?.firstOrNull?.small ?? '';
}
