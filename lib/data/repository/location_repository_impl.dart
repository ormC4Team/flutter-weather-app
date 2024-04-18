import '../data_source/location_api.dart';
import '../model/location.dart';
import 'location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final _api = LocationApi();

  @override
  Future<Location> getLocationItems(String name) async {
    final dto = await _api.getLocationInfo(name);

    // ToDo 작성
    // Location resultLists = Location();
    // return resultLists;
  }
}
