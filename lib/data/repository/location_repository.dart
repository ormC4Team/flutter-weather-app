import '../model/location.dart';

abstract interface class LocationRepository {
  Future<List<Location>> getLocationItems(String name);
}