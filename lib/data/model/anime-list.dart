// To parse this JSON data, do
//
//     final animeList = animeListFromJson(jsonString);

import 'dart:convert';

List<AnimeList> animeListFromJson(String str) =>
    List<AnimeList>.from(json.decode(str).map((x) => AnimeList.fromJson(x)));

String animeListToJson(List<AnimeList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AnimeList {
  int id;
  String image;
  String title;
  int trend;
  DateTime createdAt;
  DateTime updatedAt;

  AnimeList({
    required this.id,
    required this.image,
    required this.title,
    required this.trend,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AnimeList.fromJson(Map<String, dynamic> json) => AnimeList(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        trend: json["trend"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "trend": trend,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
