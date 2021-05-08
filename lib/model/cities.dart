import 'dart:convert';

CityModel cityModelFromJson(String str) => CityModel.fromJson(json.decode(str));

String cityModelToJson(CityModel data) => json.encode(data.toJson());

class CityModel {
    CityModel({
        this.keyword,
        this.id,
        this.autocompleteTerm,
        this.country,
    });

    String keyword;
    String id;
    String autocompleteTerm;
    String country;

    factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        keyword: json["keyword"],
        id: json["id"],
        autocompleteTerm: json["autocompleteTerm"],
        country: json["country"],
    );

    Map<String, dynamic> toJson() => {
        "keyword": keyword,
        "id": id,
        "autocompleteTerm": autocompleteTerm,
        "country": country,
    };
}
