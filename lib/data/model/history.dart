// To parse this JSON data, do
//
//     final history = historyFromJson(jsonString);

import 'dart:convert';

List<History> historyFromJson(String str) =>
    List<History>.from(json.decode(str).map((x) => History.fromJson(x)));

String historyToJson(List<History> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class History {
  int id;
  String title;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  History({
    required this.id,
    required this.title,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
