import 'dart:collection' show UnmodifiableListView;

import '../export.dart';
import '../mappers/model_mapper.dart';

/// Repository for fetching remote data and mapping it to domain models.
///
/// The [initLimit] controls how many items to include in the initial data load
/// to optimize first render performance while full data loads asynchronously.
class RemoteDataRepository<T extends Object> {
  const RemoteDataRepository(this._client, this._mapper, {this.initLimit = 25});

  final int initLimit;
  final ClientHttp _client;
  final ModelMapper<T, Hotel> _mapper;

  UnmodifiableListView<T> initialData(Iterable<Hotel> hotels) =>
      _mapper.map(hotels.take(initLimit));

  Future<UnmodifiableListView<T>> allData(Iterable<Hotel> hotels) =>
      _mapper.mapAsync(hotels);

  Future<Iterable<Hotel>?> get fetchHotels async {
    try {
      final response = await _client.getHotels();

      return response.data?.hotels?.nonNulls ?? [];
    } catch (_) {
      return null;
    }
  }
}
