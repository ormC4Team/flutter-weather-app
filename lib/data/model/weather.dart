import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double latitude,
    required double longitude,
    required
  }) = _Weather;



  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}