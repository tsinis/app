// ignore_for_file: prefer-single-declaration-per-file

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rest_api/hotels_api.dart';

import '../../core/core_dependencies.dart';
import '../widgets/hotel_list.dart';

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
    child: const HotelList<RemoteDataEvent, HotelDataState<Hotel>, HotelBloc>(
      isFavorite: false,
      refresh: RemoteDataRefreshed(),
    ),
  );
}

typedef HotelBloc = RemoteDataBloc<Hotel>;

class HotelsMapper extends ModelMapper<Hotel, Hotel> {
  const HotelsMapper();

  @override
  Hotel mapItem(Hotel model) => model;
}
