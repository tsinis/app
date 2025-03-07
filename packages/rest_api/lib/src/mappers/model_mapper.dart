import 'dart:collection' show UnmodifiableListView;

abstract class ModelMapper<T extends Object, R extends Object> {
  const ModelMapper();

  /// Maps a single item from [R] to [T].
  ///
  /// This method must be implemented by concrete classes.
  T mapItem(R item);

  /// Maps a list of [R] items to a list of [T] items.
  ///
  /// Returns an empty list if [items] is null or empty.
  UnmodifiableListView<T> map(Iterable<R>? items) =>
      UnmodifiableListView(items?.map(mapItem) ?? const []);

  /// Maps a list of [R] items to a list of [T] items asynchronously.
  ///
  /// This is useful for expensive mapping operations that should be performed
  /// on a background isolate.
  ///
  /// Returns an empty list if [items] is null or empty.
  Future<UnmodifiableListView<T>> mapAsync(
    Iterable<R>? items, [
    Duration delay = Duration.zero,
  ]) async {
    if (items?.isEmpty ?? true) return UnmodifiableListView<T>(const []);
    // Unblocks the event loop to allow the UI to be responsive.
    await Future<void>.delayed(delay);

    return UnmodifiableListView(items?.map(mapItem) ?? const []);
  }
}
