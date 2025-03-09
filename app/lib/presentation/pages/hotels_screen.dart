// ignore_for_file: prefer-single-declaration-per-file

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../../core/core_dependencies.dart';
import '../../core/hotels_mapper.dart';
import '../widgets/hotel_list.dart';

/// A screen that displays the list of hotels.
///
/// This screen uses the [HotelList] widget to display the hotels and sets up
/// a [BlocProvider] to manage the state of the hotel data.
@RoutePage(name: HotelsScreen.name)
class HotelsScreen extends StatelessWidget {
  /// Creates an instance of [HotelsScreen].
  const HotelsScreen({super.key});

  /// The icon for the hotels tab.
  static const icon = Symbols.search;

  /// The name of the hotels route.
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
    child: const HotelList<RemoteDataEvent, HotelDataState<Hotel>, HotelBloc>(
      isFavorite: false,
      refresh: RemoteDataRefreshed(),
    ),
  );
}
