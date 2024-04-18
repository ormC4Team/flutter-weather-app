/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

WeatherDto weatherDtoFromJson(String str) => WeatherDto.fromJson(json.decode(str));

String weatherDtoToJson(WeatherDto data) => json.encode(data.toJson());

class WeatherDto {
    WeatherDto({
        required this.elevation,
        required this.hourlyUnits,
        required this.generationtimeMs,
        required this.timezoneAbbreviation,
        required this.timezone,
        required this.latitude,
        required this.utcOffsetSeconds,
        required this.hourly,
        required this.longitude,
    });

    int elevation;
    HourlyUnits hourlyUnits;
    double generationtimeMs;
    String timezoneAbbreviation;
    String timezone;
    num latitude;
    int utcOffsetSeconds;
    Hourly hourly;
    num longitude;

    factory WeatherDto.fromJson(Map<dynamic, dynamic> json) => WeatherDto(
        elevation: json["elevation"],
        hourlyUnits: HourlyUnits.fromJson(json["hourly_units"]),
        generationtimeMs: json["generationtime_ms"]?.toDouble(),
        timezoneAbbreviation: json["timezone_abbreviation"],
        timezone: json["timezone"],
        latitude: json["latitude"],
        utcOffsetSeconds: json["utc_offset_seconds"],
        hourly: Hourly.fromJson(json["hourly"]),
        longitude: json["longitude"],
    );

    Map<dynamic, dynamic> toJson() => {
        "elevation": elevation,
        "hourly_units": hourlyUnits.toJson(),
        "generationtime_ms": generationtimeMs,
        "timezone_abbreviation": timezoneAbbreviation,
        "timezone": timezone,
        "latitude": latitude,
        "utc_offset_seconds": utcOffsetSeconds,
        "hourly": hourly.toJson(),
        "longitude": longitude,
    };
}

class Hourly {
    Hourly({
        required this.pressureMsl,
        required this.temperature2M,
        required this.relativehumidity2M,
        required this.weathercode,
        required this.windspeed10M,
        required this.time,
    });

    List<double> pressureMsl;
    List<double> temperature2M;
    List<int> relativehumidity2M;
    List<int> weathercode;
    List<double> windspeed10M;
    List<String> time;

    factory Hourly.fromJson(Map<dynamic, dynamic> json) => Hourly(
        pressureMsl: List<double>.from(json["pressure_msl"].map((x) => x?.toDouble())),
        temperature2M: List<double>.from(json["temperature_2m"].map((x) => x?.toDouble())),
        relativehumidity2M: List<int>.from(json["relativehumidity_2m"].map((x) => x)),
        weathercode: List<int>.from(json["weathercode"].map((x) => x)),
        windspeed10M: List<double>.from(json["windspeed_10m"].map((x) => x?.toDouble())),
        time: List<String>.from(json["time"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "pressure_msl": List<dynamic>.from(pressureMsl.map((x) => x)),
        "temperature_2m": List<dynamic>.from(temperature2M.map((x) => x)),
        "relativehumidity_2m": List<dynamic>.from(relativehumidity2M.map((x) => x)),
        "weathercode": List<dynamic>.from(weathercode.map((x) => x)),
        "windspeed_10m": List<dynamic>.from(windspeed10M.map((x) => x)),
        "time": List<dynamic>.from(time.map((x) => x)),
    };
}

class HourlyUnits {
    HourlyUnits({
        required this.pressureMsl,
        required this.temperature2M,
        required this.relativehumidity2M,
        required this.weathercode,
        required this.windspeed10M,
        required this.time,
    });

    String pressureMsl;
    String temperature2M;
    String relativehumidity2M;
    String weathercode;
    String windspeed10M;
    String time;

    factory HourlyUnits.fromJson(Map<dynamic, dynamic> json) => HourlyUnits(
        pressureMsl: json["pressure_msl"],
        temperature2M: json["temperature_2m"],
        relativehumidity2M: json["relativehumidity_2m"],
        weathercode: json["weathercode"],
        windspeed10M: json["windspeed_10m"],
        time: json["time"],
    );

    Map<dynamic, dynamic> toJson() => {
        "pressure_msl": pressureMsl,
        "temperature_2m": temperature2M,
        "relativehumidity_2m": relativehumidity2M,
        "weathercode": weathercode,
        "windspeed_10m": windspeed10M,
        "time": time,
    };
}
