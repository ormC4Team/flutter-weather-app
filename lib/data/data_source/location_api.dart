import 'dart:convert';

import '../dto/location_dto.dart';
import 'package:http/http.dart' as http;

class LocationApi {
  final _baseUrl = 'https://geocoding-api.open-meteo.com/v1/search';

  Future<LocationDto> getLocationInfo(String keyword) async {
    final response = await http.get(
        Uri.parse('$_baseUrl?name=$keyword&count=3&language=en&format=json'));

    return LocationDto.fromJson(jsonDecode(response.body));
  }
}
