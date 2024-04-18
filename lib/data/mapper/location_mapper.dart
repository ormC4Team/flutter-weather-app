import 'package:flutter_weather_app/data/dto/location_dto.dart';
import 'package:flutter_weather_app/data/model/location.dart';

extension LocationMapper on LocationDto {
  Location toWeather() {
    return Location(
      cityName: results.map((e) => e.name),
    );
  }
}
