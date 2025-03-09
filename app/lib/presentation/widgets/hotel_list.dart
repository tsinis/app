// ignore_for_file: avoid-long-functions

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import 'hotel_card.dart';

class HotelList<
  T extends Object,
  S extends HotelDataState<Hotel>,
  B extends Bloc<T, S>
>
    extends StatelessWidget {
  const HotelList({required this.refreshEvent, super.key});

  final T refreshEvent;

  void _handleRefresh(BuildContext context) =>
      context.read<B>().add(refreshEvent);

  @override
  Widget build(BuildContext context) => BlocBuilder<B, S>(
    builder: (bc, state) {
      final isLoading = switch (state) {
        RemoteDataInProgress() => true,
        _ => false,
      };

      final error = switch (state) {
        RemoteDataFailure() => 'Failed to load hotels',
        _ => null,
      };

      final hotels = state.data;

      final pagingState = PagingState(
        error: error,
        hasNextPage: false,
        isLoading: isLoading,
        keys: hotels == null ? null : [0],
        pages: hotels == null ? null : [hotels],
      );

      return RefreshIndicator(
        onRefresh: () async => _handleRefresh(bc),
        child: PagedListView<int, Hotel>(
          builderDelegate: PagedChildBuilderDelegate(
            firstPageErrorIndicatorBuilder:
                (newContext) => Center(
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.error,
                      color: newContext.theme.colorScheme.error,
                    ),
                    label: const Text('Ooops! Try again'),
                    onPressed: () => _handleRefresh(newContext),
                  ),
                ),
            firstPageProgressIndicatorBuilder:
                (_) => const Center(child: CircularProgressIndicator()),
            itemBuilder:
                (_, hotel, index) => HotelCard.details(
                  hotel,
                  index: index,
                  total: state.data?.length ?? 0,
                ),
            noItemsFoundIndicatorBuilder: // TODO!
                (_) => const Center(child: CircularProgressIndicator()),
          ),
          fetchNextPage: () => _handleRefresh(bc),
          state: pagingState,
        ),
      );
    },
  );
}
