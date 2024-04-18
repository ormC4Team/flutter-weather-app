import 'package:flutter_weather_app/data/mapper/location_mapper.dart';

import '../data_source/location_api.dart';
import '../model/location.dart';
import 'location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final _api = LocationApi();

  @override
  Future<List<Location>> getLocationItems(String name) async {
    List<Location> locations = [];
    final dto = await _api.getLocationInfo(name);

    if (dto.results != null) {
      locations = dto.results!.map((e) => e.toLocation()).toList();
    }

    return locations;
  }
}
