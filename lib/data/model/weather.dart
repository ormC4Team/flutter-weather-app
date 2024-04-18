import 'package:flutter/foundation.dart';
import 'package:flutter_weather_app/data/dto/weather_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double latitude,
    required double longitude,
    required Hourly hourly,
  }) = _Weather;



  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}