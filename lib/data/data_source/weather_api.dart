import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/weather_dto.dart';

class WeatherApi {
  final _baseUrl =
      'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=5&longitude=5';

  Future<WeatherDto> getWeatherInfo(double latitude, double longitude) async{
    final response = await http.get(Uri.parse(_baseUrl));

    return WeatherDto.fromJson(jsonDecode(response.body));

  }
}
