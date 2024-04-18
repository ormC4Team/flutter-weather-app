import '../data_source/weather_api.dart';
import '../model/weather.dart';
import 'weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final _api = WeatherApi();

  @override
  Future<Weather> getWeatherItems(double latitude, double longitude) async {
    final dto = await _api.getWeatherInfo(latitude, longitude);

    Weather resultLists = Weather(
      time: dto.hourly!.time!,
      temperature: dto.hourly!.temperature2m!,
      weatherCode: dto.hourly!.weathercode!,
      relativeHumidity: dto.hourly!.weathercode!,
      windSpeed: dto.hourly!.windspeed10m!,
      pressure: dto.hourly!.pressureMsl!,
    );
    return resultLists;
  }
}
