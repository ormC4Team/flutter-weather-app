import '../dto/weather_dto.dart';
import '../model/weather.dart';

extension ToWeather on Hourly {
  Weather toWeather() {
    return Weather(
      // 모델클래스필드명:dto필드명 ?? '',
      time: time ?? [],
      temperature: temperature2m ?? [],
      weatherCode: weathercode ?? [],
      relativeHumidity: relativehumidity2m ?? [],
      windSpeed: windspeed10m ?? [],
      pressure: pressureMsl ?? [],
    );
  }
}
