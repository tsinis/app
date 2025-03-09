import 'package:rest_api/hotels_api.dart';

/// A type definition for the hotel BLoC.
typedef HotelBloc = RemoteDataBloc<Hotel>;

/// A mapper class for hotel data. It's optional, because the data is already
/// the same.
class HotelsMapper extends ModelMapper<Hotel, Hotel> {
  /// Creates an instance of [HotelsMapper].
  const HotelsMapper();

  @override
  Hotel mapItem(Hotel model) => model;
}
