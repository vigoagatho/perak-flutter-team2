// To parse this JSON data, do
//
//     final recommend = recommendFromJson(jsonString);

import 'dart:convert';

List<Recommend> recommendFromJson(String str) =>
    List<Recommend>.from(json.decode(str).map((x) => Recommend.fromJson(x)));

String recommendToJson(List<Recommend> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recommend {
  int id;
  String image;
  String title;
  DateTime createdAt;
  DateTime updatedAt;

  Recommend({
    required this.id,
    required this.image,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Recommend.fromJson(Map<String, dynamic> json) => Recommend(
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
