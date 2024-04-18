import '../model/location.dart';

abstract interface class LocationRepository {
  Future<Location> getLocationItems(String name);
}