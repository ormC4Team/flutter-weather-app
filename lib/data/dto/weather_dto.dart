class WeatherDto {
    WeatherDto({
        this.latitude,
        this.longitude,
        this.generationtimeMs,
        this.utcOffsetSeconds,
        this.timezone,
        this.timezoneAbbreviation,
        this.elevation,
        this.hourlyUnits,
        this.hourly,
    });

    WeatherDto.fromJson(dynamic json) {
        latitude = json['latitude'];
        longitude = json['longitude'];
        generationtimeMs = json['generationtime_ms'];
        utcOffsetSeconds = json['utc_offset_seconds'];
        timezone = json['timezone'];
        timezoneAbbreviation = json['timezone_abbreviation'];
        elevation = json['elevation'];
        hourlyUnits = json['hourly_units'] != null
            ? HourlyUnits.fromJson(json['hourly_units'])
            : null;
        hourly = json['hourly'] != null ? Hourly.fromJson(json['hourly']) : null;
    }

    double? latitude;
    double? longitude;
    double? generationtimeMs;
    int? utcOffsetSeconds;
    String? timezone;
    String? timezoneAbbreviation;
    double? elevation;
    HourlyUnits? hourlyUnits;
    Hourly? hourly;

    WeatherDto copyWith({
        double? latitude,
        double? longitude,
        double? generationtimeMs,
        int? utcOffsetSeconds,
        String? timezone,
        String? timezoneAbbreviation,
        double? elevation,
        HourlyUnits? hourlyUnits,
        Hourly? hourly,
    }) =>
        WeatherDto(
            latitude: latitude ?? this.latitude,
            longitude: longitude ?? this.longitude,
            generationtimeMs: generationtimeMs ?? this.generationtimeMs,
            utcOffsetSeconds: utcOffsetSeconds ?? this.utcOffsetSeconds,
            timezone: timezone ?? this.timezone,
            timezoneAbbreviation: timezoneAbbreviation ?? this.timezoneAbbreviation,
            elevation: elevation ?? this.elevation,
            hourlyUnits: hourlyUnits ?? this.hourlyUnits,
            hourly: hourly ?? this.hourly,
        );

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['latitude'] = latitude;
        map['longitude'] = longitude;
        map['generationtime_ms'] = generationtimeMs;
        map['utc_offset_seconds'] = utcOffsetSeconds;
        map['timezone'] = timezone;
        map['timezone_abbreviation'] = timezoneAbbreviation;
        map['elevation'] = elevation;
        if (hourlyUnits != null) {
            map['hourly_units'] = hourlyUnits?.toJson();
        }
        if (hourly != null) {
            map['hourly'] = hourly?.toJson();
        }
        return map;
    }
}

class Hourly {
    Hourly({
        this.time,
        this.temperature2m,
        this.weathercode,
        this.relativehumidity2m,
        this.windspeed10m,
        this.pressureMsl,
    });

    Hourly.fromJson(dynamic json) {
        time = json['time'] != null ? json['time'].cast<String>() : [];
        temperature2m = json['temperature_2m'] != null
            ? json['temperature_2m'].cast<double>()
            : [];
        weathercode =
        json['weathercode'] != null ? json['weathercode'].cast<int>() : [];
        relativehumidity2m = json['relativehumidity_2m'] != null
            ? json['relativehumidity_2m'].cast<int>()
            : [];
        windspeed10m = json['windspeed_10m'] != null
            ? json['windspeed_10m'].cast<double>()
            : [];
        pressureMsl =
        json['pressure_msl'] != null ? json['pressure_msl'].cast<double>() : [];
    }

    List<String>? time;
    List<double>? temperature2m;
    List<int>? weathercode;
    List<int>? relativehumidity2m;
    List<double>? windspeed10m;
    List<double>? pressureMsl;

    Hourly copyWith({
        List<String>? time,
        List<double>? temperature2m,
        List<int>? weathercode,
        List<int>? relativehumidity2m,
        List<double>? windspeed10m,
        List<double>? pressureMsl,
    }) =>
        Hourly(
            time: time ?? this.time,
            temperature2m: temperature2m ?? this.temperature2m,
            weathercode: weathercode ?? this.weathercode,
            relativehumidity2m: relativehumidity2m ?? this.relativehumidity2m,
            windspeed10m: windspeed10m ?? this.windspeed10m,
            pressureMsl: pressureMsl ?? this.pressureMsl,
        );

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['time'] = time;
        map['temperature_2m'] = temperature2m;
        map['weathercode'] = weathercode;
        map['relativehumidity_2m'] = relativehumidity2m;
        map['windspeed_10m'] = windspeed10m;
        map['pressure_msl'] = pressureMsl;
        return map;
    }
}

class HourlyUnits {
    HourlyUnits({
        this.time,
        this.temperature2m,
        this.weathercode,
        this.relativehumidity2m,
        this.windspeed10m,
        this.pressureMsl,
    });

    HourlyUnits.fromJson(dynamic json) {
        time = json['time'];
        temperature2m = json['temperature_2m'];
        weathercode = json['weathercode'];
        relativehumidity2m = json['relativehumidity_2m'];
        windspeed10m = json['windspeed_10m'];
        pressureMsl = json['pressure_msl'];
    }

    String? time;
    String? temperature2m;
    String? weathercode;
    String? relativehumidity2m;
    String? windspeed10m;
    String? pressureMsl;

    HourlyUnits copyWith({
        String? time,
        String? temperature2m,
        String? weathercode,
        String? relativehumidity2m,
        String? windspeed10m,
        String? pressureMsl,
    }) =>
        HourlyUnits(
            time: time ?? this.time,
            temperature2m: temperature2m ?? this.temperature2m,
            weathercode: weathercode ?? this.weathercode,
            relativehumidity2m: relativehumidity2m ?? this.relativehumidity2m,
            windspeed10m: windspeed10m ?? this.windspeed10m,
            pressureMsl: pressureMsl ?? this.pressureMsl,
        );

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['time'] = time;
        map['temperature_2m'] = temperature2m;
        map['weathercode'] = weathercode;
        map['relativehumidity_2m'] = relativehumidity2m;
        map['windspeed_10m'] = windspeed10m;
        map['pressure_msl'] = pressureMsl;
        return map;
    }
}
// /// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation
//
// import 'dart:convert';
//
// WeatherDto weatherDtoFromJson(String str) => WeatherDto.fromJson(json.decode(str));
//
// String weatherDtoToJson(WeatherDto data) => json.encode(data.toJson());
//
// class WeatherDto {
//     WeatherDto({
//         required this.elevation,
//         required this.hourlyUnits,
//         required this.generationtimeMs,
//         required this.timezoneAbbreviation,
//         required this.timezone,
//         required this.latitude,
//         required this.utcOffsetSeconds,
//         required this.hourly,
//         required this.longitude,
//     });
//
//     int elevation;
//     HourlyUnits hourlyUnits;
//     double generationtimeMs;
//     String timezoneAbbreviation;
//     String timezone;
//     num latitude;
//     int utcOffsetSeconds;
//     Hourly hourly;
//     num longitude;
//
//     factory WeatherDto.fromJson(Map<dynamic, dynamic> json) => WeatherDto(
//         elevation: json["elevation"],
//         hourlyUnits: HourlyUnits.fromJson(json["hourly_units"]),
//         generationtimeMs: json["generationtime_ms"]?.toDouble(),
//         timezoneAbbreviation: json["timezone_abbreviation"],
//         timezone: json["timezone"],
//         latitude: json["latitude"],
//         utcOffsetSeconds: json["utc_offset_seconds"],
//         hourly: Hourly.fromJson(json["hourly"]),
//         longitude: json["longitude"],
//     );
//
//     Map<dynamic, dynamic> toJson() => {
//         "elevation": elevation,
//         "hourly_units": hourlyUnits.toJson(),
//         "generationtime_ms": generationtimeMs,
//         "timezone_abbreviation": timezoneAbbreviation,
//         "timezone": timezone,
//         "latitude": latitude,
//         "utc_offset_seconds": utcOffsetSeconds,
//         "hourly": hourly.toJson(),
//         "longitude": longitude,
//     };
// }
//
// class Hourly {
//     Hourly({
//         required this.pressureMsl,
//         required this.temperature2M,
//         required this.relativehumidity2M,
//         required this.weathercode,
//         required this.windspeed10M,
//         required this.time,
//     });
//
//     List<double> pressureMsl;
//     List<double> temperature2M;
//     List<int> relativehumidity2M;
//     List<int> weathercode;
//     List<double> windspeed10M;
//     List<String> time;
//
//     factory Hourly.fromJson(Map<dynamic, dynamic> json) => Hourly(
//         pressureMsl: List<double>.from(json["pressure_msl"].map((x) => x?.toDouble())),
//         temperature2M: List<double>.from(json["temperature_2m"].map((x) => x?.toDouble())),
//         relativehumidity2M: List<int>.from(json["relativehumidity_2m"].map((x) => x)),
//         weathercode: List<int>.from(json["weathercode"].map((x) => x)),
//         windspeed10M: List<double>.from(json["windspeed_10m"].map((x) => x?.toDouble())),
//         time: List<String>.from(json["time"].map((x) => x)),
//     );
//
//     Map<dynamic, dynamic> toJson() => {
//         "pressure_msl": List<dynamic>.from(pressureMsl.map((x) => x)),
//         "temperature_2m": List<dynamic>.from(temperature2M.map((x) => x)),
//         "relativehumidity_2m": List<dynamic>.from(relativehumidity2M.map((x) => x)),
//         "weathercode": List<dynamic>.from(weathercode.map((x) => x)),
//         "windspeed_10m": List<dynamic>.from(windspeed10M.map((x) => x)),
//         "time": List<dynamic>.from(time.map((x) => x)),
//     };
// }
//
// class HourlyUnits {
//     HourlyUnits({
//         required this.pressureMsl,
//         required this.temperature2M,
//         required this.relativehumidity2M,
//         required this.weathercode,
//         required this.windspeed10M,
//         required this.time,
//     });
//
//     String pressureMsl;
//     String temperature2M;
//     String relativehumidity2M;
//     String weathercode;
//     String windspeed10M;
//     String time;
//
//     factory HourlyUnits.fromJson(Map<dynamic, dynamic> json) => HourlyUnits(
//         pressureMsl: json["pressure_msl"],
//         temperature2M: json["temperature_2m"],
//         relativehumidity2M: json["relativehumidity_2m"],
//         weathercode: json["weathercode"],
//         windspeed10M: json["windspeed_10m"],
//         time: json["time"],
//     );
//
//     Map<dynamic, dynamic> toJson() => {
//         "pressure_msl": pressureMsl,
//         "temperature_2m": temperature2M,
//         "relativehumidity_2m": relativehumidity2M,
//         "weathercode": weathercode,
//         "windspeed_10m": windspeed10M,
//         "time": time,
//     };
// }
