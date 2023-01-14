import 'dart:async';

abstract class StorageApi {
  const StorageApi();

  Future<void> setValue(
    String key,
    dynamic value,
  );

  FutureOr<dynamic> getValue(String key);

  FutureOr<void> delete(String key);

  FutureOr<void> deleteAll(Iterable<String> keys);

  Future<Iterable> getKeys();

  FutureOr<Iterable<dynamic>> getValues();

  FutureOr<void> setAllValues(Map<String, dynamic> values);

  FutureOr<void> dispose() async {}
}
