import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api/hotels_api.dart';

import '../../core/mappers/hotels_mapper.dart';

@RoutePage(name: OverviewScreen.name)
class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  static const icon = Icons.home_outlined;
  static const name = 'overview';

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (_) => HotelBloc(
          RemoteDataRepository(ClientHttp(Dio()), const HotelsMapper()),
        )..add(const RemoteDataStarted()),
    child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed:
                () => context.read<RemoteDataBloc<String>>().add(
                  const RemoteDataRefreshed(),
                ),
          ),
        ],
      ),
      body: const HotelListView(),
    ),
  );
}

typedef HotelBloc = RemoteDataBloc<String>;

// TODO!
// ignore: prefer-single-widget-per-file, prefer-single-declaration-per-file
class HotelListView extends StatelessWidget {
  const HotelListView({super.key});

  @override
  Widget build(
    // ignore: unnecessary-trailing-comma it's TODO!
    BuildContext context,
  ) => BlocBuilder<HotelBloc, RemoteDataState<String>>(
    builder:
        (bc, state) => switch (state) {
          RemoteDataInProgress() => const Center(
            child: CircularProgressIndicator(),
          ),
          RemoteDataFailure() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error),
                ElevatedButton(
                  onPressed:
                      () =>
                          bc.read<HotelBloc>().add(const RemoteDataRefreshed()),
                  child: const Text('Try Again'),
                ),
              ],
            ),
          ),
          RemoteDataInitial(:final data) =>
            (data?.isEmpty ?? true)
                ? const Center(child: Text('No hotels found'))
                : RefreshIndicator(
                  onRefresh:
                      () async =>
                          bc.read<HotelBloc>().add(const RemoteDataRefreshed()),
                  child: ListView.builder(
                    itemBuilder:
                        (_, index) => Card(
                          margin: const EdgeInsets.all(8),
                          child: ListTile(
                            leading:
                                (data?[index].isNotEmpty ?? false)
                                    ? SizedBox.square(
                                      dimension: 60,
                                      child: Image.network(
                                        data?[index] ?? '',
                                        errorBuilder:
                                            (_, error, stackTrace) =>
                                                const Icon(Icons.broken_image),
                                        fit: BoxFit.cover,
                                        semanticLabel: index.toString(),
                                      ),
                                    )
                                    : const SizedBox.square(
                                      dimension: 60,
                                      child: Icon(Icons.hotel),
                                    ),
                          ),
                        ),
                    itemCount: data?.length,
                  ),
                ),
        },
  );
}
