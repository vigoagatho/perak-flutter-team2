// To parse this JSON data, do
//
//     final lanjutNonton = lanjutNontonFromJson(jsonString);

import 'dart:convert';

List<LanjutNonton> lanjutNontonFromJson(String str) => List<LanjutNonton>.from(
    json.decode(str).map((x) => LanjutNonton.fromJson(x)));

String lanjutNontonToJson(List<LanjutNonton> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LanjutNonton {
  int id;
  String image;
  String title;
  String eps;
  String progress;
  DateTime createdAt;
  DateTime updatedAt;

  LanjutNonton({
    required this.id,
    required this.image,
    required this.title,
    required this.eps,
    required this.progress,
    required this.createdAt,
    required this.updatedAt,
  });

  factory LanjutNonton.fromJson(Map<String, dynamic> json) => LanjutNonton(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        eps: json["eps"],
        progress: json["progress"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "eps": eps,
        "progress": progress,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
