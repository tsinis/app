import 'dart:collection' show UnmodifiableListView;

import 'package:bloc_test/bloc_test.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:test/test.dart';

void main() => group('$RemoteDataBloc', () {
  const mapper = _RemoteDataBlocTest();
  const statusServerError = 500;
  const waitDuration = Duration(milliseconds: 110);

  late final dioAdapter = AdaptedDio.test();
  late final client = ClientHttp(dioAdapter.dio);

  late RemoteDataRepository<String> repository;

  setUp(() => repository = RemoteDataRepository(client, mapper, initLimit: 2));

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'on initial',
    build: () => RemoteDataBloc(repository),
    expect: () => isEmpty,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'emits [RemoteDataInProgress, RemoteDataInitial] when hotels are '
    'fetched successfully',
    act: (bloc) => bloc.add(const RemoteDataStarted()),
    build: () {
      const mockResponse = ApiResponse(
        hotels: [
          Hotel(hotelId: '1', name: 'Test 1'),
          Hotel(hotelId: '2', name: 'Test 2'),
        ],
      );
      dioAdapter.reply(mockResponse);

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataInitial<String>(
            data: UnmodifiableListView(const ['Test 1', 'Test 2']),
          ),
        ],
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'emits [RemoteDataInProgress, RemoteDataFailure] when hotels fetch fails',
    act: (bloc) => bloc.add(const RemoteDataStarted()),
    build: () {
      dioAdapter.reply(null, statusCode: statusServerError);

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataFailure<String>(data: UnmodifiableListView(const [])),
        ],
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'emits correct states when refreshing data',
    act: (bloc) => bloc.add(const RemoteDataRefreshed()),
    build: () {
      const refreshResponse = ApiResponse(
        hotels: [
          Hotel(hotelId: '3', name: 'Test 3'),
          Hotel(hotelId: '4', name: 'Test 4'),
        ],
      );
      dioAdapter.reply(refreshResponse);

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress(
            data: UnmodifiableListView(const ['Test 1', 'Test 2']),
          ),
          RemoteDataInitial(
            data: UnmodifiableListView(const ['Test 3', 'Test 4']),
          ),
        ],
    seed:
        () => RemoteDataInitial(
          data: UnmodifiableListView(const ['Test 1', 'Test 2']),
        ),
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'handles empty hotel list from API correctly',
    act: (bloc) => bloc.add(const RemoteDataStarted()),
    build: () {
      dioAdapter.reply(const ApiResponse(hotels: []));

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataInitial<String>(data: UnmodifiableListView(const [])),
        ],
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'handles null response from API correctly',
    act: (bloc) => bloc.add(const RemoteDataStarted()),
    build: () {
      dioAdapter.reply(null);

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataInitial<String>(data: UnmodifiableListView(const [])),
        ],
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'ignores refresh event when already in loading state',
    act: (bloc) async {
      bloc.add(const RemoteDataStarted());
      await Future<void>.delayed(Duration.zero);
      bloc.add(const RemoteDataRefreshed());
    },
    build: () {
      dioAdapter.reply(
        const ApiResponse(hotels: [Hotel(hotelId: '1', name: 'Test 1')]),
      );

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataInitial(data: UnmodifiableListView(const ['Test 1'])),
        ],
    wait: waitDuration,
  );

  blocTest<RemoteDataBloc<String>, HotelDataState<String>>(
    'handles more hotels than initLimit correctly',
    act: (bloc) => bloc.add(const RemoteDataStarted()),
    build: () {
      const mockResponse = ApiResponse(
        hotels: [
          Hotel(hotelId: '1', name: 'Test 1'),
          Hotel(hotelId: '2', name: 'Test 2'),
          Hotel(hotelId: '3', name: 'Test 3'),
        ],
      );

      dioAdapter.reply(mockResponse);

      return RemoteDataBloc(repository);
    },
    expect:
        () => [
          RemoteDataInProgress<String>(data: UnmodifiableListView(const [])),
          RemoteDataInProgress(
            data: UnmodifiableListView(const ['Test 1', 'Test 2']),
          ),
          RemoteDataInitial(
            data: UnmodifiableListView(const ['Test 1', 'Test 2', 'Test 3']),
          ),
        ],
    wait: waitDuration,
  );
});

class _RemoteDataBlocTest extends ModelMapper<String, Hotel> {
  const _RemoteDataBlocTest();

  @override
  String mapItem(Hotel item) => item.name ?? '';
}
