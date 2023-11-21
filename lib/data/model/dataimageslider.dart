// To parse this JSON data, do
//
//     final dataImageSlider = dataImageSliderFromJson(jsonString);

import 'dart:convert';

List<DataImageSlider> dataImageSliderFromJson(String str) =>
    List<DataImageSlider>.from(
        json.decode(str).map((x) => DataImageSlider.fromJson(x)));

String dataImageSliderToJson(List<DataImageSlider> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataImageSlider {
  int id;
  String image;
  String title;
  DateTime createdAt;
  DateTime updatedAt;

  DataImageSlider({
    required this.id,
    required this.image,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DataImageSlider.fromJson(Map<String, dynamic> json) =>
      DataImageSlider(
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
