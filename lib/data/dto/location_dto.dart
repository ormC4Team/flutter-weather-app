/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

LocationDto locationDtoFromJson(String str) => LocationDto.fromJson(json.decode(str));

String locationDtoToJson(LocationDto data) => json.encode(data.toJson());

class LocationDto {
    LocationDto({
        required this.generationtimeMs,
        required this.results,
    });

    double generationtimeMs;
    List<Result> results;

    factory LocationDto.fromJson(Map<dynamic, dynamic> json) => LocationDto(
        generationtimeMs: json["generationtime_ms"]?.toDouble(),
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "generationtime_ms": generationtimeMs,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        required this.elevation,
        required this.country,
        required this.admin1Id,
        required this.timezone,
        required this.latitude,
        this.population,
        required this.countryCode,
        required this.name,
        required this.admin1,
        required this.id,
        required this.featureCode,
        required this.countryId,
        required this.longitude,
    });

    int elevation;
    String country;
    int admin1Id;
    String timezone;
    double latitude;
    int? population;
    String countryCode;
    String name;
    String admin1;
    int id;
    String featureCode;
    int countryId;
    double longitude;

    factory Result.fromJson(Map<dynamic, dynamic> json) => Result(
        elevation: json["elevation"],
        country: json["country"],
        admin1Id: json["admin1_id"],
        timezone: json["timezone"],
        latitude: json["latitude"]?.toDouble(),
        population: json["population"],
        countryCode: json["country_code"],
        name: json["name"],
        admin1: json["admin1"],
        id: json["id"],
        featureCode: json["feature_code"],
        countryId: json["country_id"],
        longitude: json["longitude"]?.toDouble(),
    );

    Map<dynamic, dynamic> toJson() => {
        "elevation": elevation,
        "country": country,
        "admin1_id": admin1Id,
        "timezone": timezone,
        "latitude": latitude,
        "population": population,
        "country_code": countryCode,
        "name": name,
        "admin1": admin1,
        "id": id,
        "feature_code": featureCode,
        "country_id": countryId,
        "longitude": longitude,
    };
}
