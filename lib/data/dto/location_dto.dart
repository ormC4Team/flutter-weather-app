class LocationDto {
    LocationDto({
        this.results,
        this.generationtimeMs,
    });

    LocationDto.fromJson(dynamic json) {
        if (json['results'] != null) {
            results = [];
            json['results'].forEach((v) {
                results?.add(Results.fromJson(v));
            });
        }
        generationtimeMs = json['generationtime_ms'];
    }

    List<Results>? results;
    double? generationtimeMs;

    LocationDto copyWith({
        List<Results>? results,
        double? generationtimeMs,
    }) =>
        LocationDto(
            results: results ?? this.results,
            generationtimeMs: generationtimeMs ?? this.generationtimeMs,
        );

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        if (results != null) {
            map['results'] = results?.map((v) => v.toJson()).toList();
        }
        map['generationtime_ms'] = generationtimeMs;
        return map;
    }
}

class Results {
    Results({
        this.id,
        this.name,
        this.latitude,
        this.longitude,
        this.elevation,
        this.featureCode,
        this.countryCode,
        this.admin1Id,
        this.timezone,
        this.population,
        this.countryId,
        this.country,
        this.admin1,
    });

    Results.fromJson(dynamic json) {
        id = json['id'];
        name = json['name'];
        latitude = json['latitude'];
        longitude = json['longitude'];
        elevation = json['elevation'];
        featureCode = json['feature_code'];
        countryCode = json['country_code'];
        admin1Id = json['admin1_id'];
        timezone = json['timezone'];
        population = json['population'];
        countryId = json['country_id'];
        country = json['country'];
        admin1 = json['admin1'];
    }

    int? id;
    String? name;
    double? latitude;
    double? longitude;
    double? elevation;
    String? featureCode;
    String? countryCode;
    int? admin1Id;
    String? timezone;
    int? population;
    int? countryId;
    String? country;
    String? admin1;

    Results copyWith({
        int? id,
        String? name,
        double? latitude,
        double? longitude,
        double? elevation,
        String? featureCode,
        String? countryCode,
        int? admin1Id,
        String? timezone,
        int? population,
        int? countryId,
        String? country,
        String? admin1,
    }) =>
        Results(
            id: id ?? this.id,
            name: name ?? this.name,
            latitude: latitude ?? this.latitude,
            longitude: longitude ?? this.longitude,
            elevation: elevation ?? this.elevation,
            featureCode: featureCode ?? this.featureCode,
            countryCode: countryCode ?? this.countryCode,
            admin1Id: admin1Id ?? this.admin1Id,
            timezone: timezone ?? this.timezone,
            population: population ?? this.population,
            countryId: countryId ?? this.countryId,
            country: country ?? this.country,
            admin1: admin1 ?? this.admin1,
        );

    Map<String, dynamic> toJson() {
        final map = <String, dynamic>{};
        map['id'] = id;
        map['name'] = name;
        map['latitude'] = latitude;
        map['longitude'] = longitude;
        map['elevation'] = elevation;
        map['feature_code'] = featureCode;
        map['country_code'] = countryCode;
        map['admin1_id'] = admin1Id;
        map['timezone'] = timezone;
        map['population'] = population;
        map['country_id'] = countryId;
        map['country'] = country;
        map['admin1'] = admin1;
        return map;
    }
}

// /// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation
//
// import 'dart:convert';
//
// LocationDto locationDtoFromJson(String str) => LocationDto.fromJson(json.decode(str));
//
// String locationDtoToJson(LocationDto data) => json.encode(data.toJson());
//
// class LocationDto {
//     LocationDto({
//         required this.generationtimeMs,
//         required this.results,
//     });
//
//     double generationtimeMs;
//     List<Result> results;
//
//     factory LocationDto.fromJson(Map<dynamic, dynamic> json) => LocationDto(
//         generationtimeMs: json["generationtime_ms"]?.toDouble(),
//         results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
//     );
//
//     Map<dynamic, dynamic> toJson() => {
//         "generationtime_ms": generationtimeMs,
//         "results": List<dynamic>.from(results.map((x) => x.toJson())),
//     };
// }
//
// class Result {
//     Result({
//         required this.elevation,
//         required this.country,
//         required this.admin1Id,
//         required this.timezone,
//         required this.latitude,
//         this.population,
//         required this.countryCode,
//         required this.name,
//         required this.admin1,
//         required this.id,
//         required this.featureCode,
//         required this.countryId,
//         required this.longitude,
//     });
//
//     int elevation;
//     String country;
//     int admin1Id;
//     String timezone;
//     double latitude;
//     int? population;
//     String countryCode;
//     String name;
//     String admin1;
//     int id;
//     String featureCode;
//     int countryId;
//     double longitude;
//
//     factory Result.fromJson(Map<dynamic, dynamic> json) => Result(
//         elevation: json["elevation"],
//         country: json["country"],
//         admin1Id: json["admin1_id"],
//         timezone: json["timezone"],
//         latitude: json["latitude"]?.toDouble(),
//         population: json["population"],
//         countryCode: json["country_code"],
//         name: json["name"],
//         admin1: json["admin1"],
//         id: json["id"],
//         featureCode: json["feature_code"],
//         countryId: json["country_id"],
//         longitude: json["longitude"]?.toDouble(),
//     );
//
//     Map<dynamic, dynamic> toJson() => {
//         "elevation": elevation,
//         "country": country,
//         "admin1_id": admin1Id,
//         "timezone": timezone,
//         "latitude": latitude,
//         "population": population,
//         "country_code": countryCode,
//         "name": name,
//         "admin1": admin1,
//         "id": id,
//         "feature_code": featureCode,
//         "country_id": countryId,
//         "longitude": longitude,
//     };
// }
