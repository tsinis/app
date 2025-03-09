// ignore_for_file: prefer-match-file-name

part of 'favorites_bloc.dart';

/// Base class for all favorites-related events.
sealed class FavoritesEvent {
  const FavoritesEvent();
}

/// Event to refresh the list of favorites from the database.
final class FavoritesRefreshed extends FavoritesEvent {
  const FavoritesRefreshed({this.delay});

  final Duration? delay;
}

/// Event to add a hotel to favorites.
final class FavoritesAdded extends FavoritesEvent {
  const FavoritesAdded({required this.hotel});

  final Hotel hotel;
}

/// Event to remove a hotel from favorites.
final class FavoritesRemoved extends FavoritesEvent {
  const FavoritesRemoved({required this.hotel});

  final Hotel hotel;
}
