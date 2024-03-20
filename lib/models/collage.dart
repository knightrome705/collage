// To parse this JSON data, do
//
//     final collage = collageFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Collage> collageFromJson(String str) => List<Collage>.from(json.decode(str).map((x) => Collage.fromJson(x)));

String collageToJson(List<Collage> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Collage {
  String alphaTwoCode;
  List<String> webPages;
  dynamic stateProvince;
  String name;
  List<String> domains;
  String country;

  Collage({
    required this.alphaTwoCode,
    required this.webPages,
    required this.stateProvince,
    required this.name,
    required this.domains,
    required this.country,
  });

  factory Collage.fromJson(Map<String, dynamic> json) => Collage(
    alphaTwoCode: json["alpha_two_code"],
    webPages: List<String>.from(json["web_pages"].map((x) => x)),
    stateProvince: json["state-province"],
    name: json["name"],
    domains: List<String>.from(json["domains"].map((x) => x)),
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "alpha_two_code": alphaTwoCode,
    "web_pages": List<dynamic>.from(webPages.map((x) => x)),
    "state-province": stateProvince,
    "name": name,
    "domains": List<dynamic>.from(domains.map((x) => x)),
    "country": country,
  };
}
