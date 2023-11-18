// To parse this JSON data, do
//
//     final trend = trendFromJson(jsonString);

import 'dart:convert';

List<Trend> trendFromJson(String str) =>
    List<Trend>.from(json.decode(str).map((x) => Trend.fromJson(x)));

String trendToJson(List<Trend> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trend {
  int id;
  String image;
  String title;
  DateTime createdAt;
  DateTime updatedAt;

  Trend({
    required this.id,
    required this.image,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Trend.fromJson(Map<String, dynamic> json) => Trend(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
