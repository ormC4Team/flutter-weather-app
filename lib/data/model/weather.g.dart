// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature: (json['temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode:
          (json['weatherCode'] as List<dynamic>).map((e) => e as int).toList(),
      relativeHumidity: (json['relativeHumidity'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      windSpeed: (json['windSpeed'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      pressure: (json['pressure'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'weatherCode': instance.weatherCode,
      'relativeHumidity': instance.relativeHumidity,
      'windSpeed': instance.windSpeed,
      'pressure': instance.pressure,
    };
