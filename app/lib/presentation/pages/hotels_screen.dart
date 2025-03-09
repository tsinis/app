// ignore_for_file: prefer-single-declaration-per-file

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import '../../core/core_dependencies.dart';
import '../theme/app_theme.dart';
import '../widgets/hotel_card.dart';

@RoutePage(name: HotelsScreen.name)
class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  static const icon = Symbols.search;
  static const name = 'hotels';

  @override
  Widget build(BuildContext context) => BlocProvider(
    create:
        (bc) => HotelBloc(
          RemoteDataRepository(
            bc.read<CoreDependencies>().restClient,
            const HotelsMapper(),
          ),
        )..add(const RemoteDataStarted()),
    child: const HotelListView(),
  );
}

typedef HotelBloc = RemoteDataBloc<Hotel>;

class HotelsMapper extends ModelMapper<Hotel, Hotel> {
  const HotelsMapper();

  @override
  Hotel mapItem(Hotel model) => model;
}

// TODO!
// ignore: prefer-single-widget-per-file
class HotelListView extends StatelessWidget {
  const HotelListView({super.key});

  @override
  Widget build(
    // ignore: unnecessary-trailing-comma it's TODO!
    BuildContext context,
  ) => BlocBuilder<HotelBloc, RemoteDataState<Hotel>>(
    builder:
        (bc, state) => switch (state) {
          RemoteDataInProgress() => const Center(
            child: CircularProgressIndicator(),
          ),
          RemoteDataFailure() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppTheme.size,
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
                : MaybeWidget(
                  data,
                  (safeData) => RefreshIndicator(
                    onRefresh:
                        () async => bc.read<HotelBloc>().add(
                          const RemoteDataRefreshed(),
                        ),
                    child: ListView.builder(
                      itemBuilder:
                          (_, index) => MaybeWidget(
                            safeData.elementAtOrNull(index),
                            (hotel) => HotelCard.details(
                              hotel,
                              index: index,
                              total: safeData.length,
                            ),
                          ),
                      itemCount: safeData.length,
                    ),
                  ),
                ),
        },
  );
}
