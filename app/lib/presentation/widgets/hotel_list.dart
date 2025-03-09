// ignore_for_file: avoid-long-functions

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:rest_api/hotels_api.dart';
import 'package:world_countries/helpers.dart';

import 'hotel_card.dart';

/// A widget that displays a list of hotels with infinite scrolling and
/// pagination.
///
/// This widget uses [PagedListView] to display the hotels and [BlocBuilder]
/// to manage the state of the hotel data.
class HotelList<
  T extends Object,
  S extends HotelDataState<Hotel>,
  B extends Bloc<T, S>
>
    extends StatelessWidget {
  /// Creates an instance of [HotelList].
  const HotelList({required this.refresh, this.isFavorite = true, super.key});

  /// The event to refresh the hotel list.
  final T refresh;

  /// Whether the list is for favorite hotels.
  final bool isFavorite;

  /// Handles the refresh event.
  void _handleRefresh(BuildContext context) => context.read<B>().add(refresh);

  @override
  Widget build(BuildContext context) => BlocBuilder<B, S>(
    builder: (bc, state) {
      final isLoading = switch (state) {
        RemoteDataInProgress() => true,
        _ => false,
      };

      final error = switch (state) {
        RemoteDataFailure() => 'Failed to load hotels :(',
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
                (_, hotel, index) =>
                    isFavorite
                        ? HotelCard.rate(hotel)
                        : HotelCard.details(
                          hotel,
                          index: index,
                          total: state.data?.length ?? 0,
                        ),
            noItemsFoundIndicatorBuilder:
                (_) => Center(
                  child:
                      isFavorite
                          ? const Text("You haven't collected anything yet :)")
                          : const CircularProgressIndicator(),
                ),
          ),
          fetchNextPage: () => _handleRefresh(bc),
          state: pagingState,
        ),
      );
    },
  );
}
