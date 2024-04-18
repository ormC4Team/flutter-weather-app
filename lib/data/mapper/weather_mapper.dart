import 'package:flutter_weather_app/data/dto/weather_dto.dart';
import 'package:flutter_weather_app/data/model/weather.dart';

extension WeatherMapper on WeatherDto {
  Weather toWeather() {
    return Weather(
      latitude: latitude.toDouble(),
      longitude: longitude.toDouble(),
      hourly: hourly,
    );
  }
}
