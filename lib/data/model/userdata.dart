// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

List<UserData> userDataFromJson(String str) => List<UserData>.from(json.decode(str).map((x) => UserData.fromJson(x)));

String userDataToJson(List<UserData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserData {
    int id;
    String name;
    String userprofile;
    String title;
    String image;
    String view;
    String comment;
    String video;
    DateTime createdAt;
    DateTime updatedAt;

    UserData({
        required this.id,
        required this.name,
        required this.userprofile,
        required this.title,
        required this.image,
        required this.view,
        required this.comment,
        required this.video,
        required this.createdAt,
        required this.updatedAt,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        name: json["name"],
        userprofile: json["userprofile"],
        title: json["title"],
        image: json["image"],
        view: json["view"],
        comment: json["comment"],
        video: json["video"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "userprofile": userprofile,
        "title": title,
        "image": image,
        "view": view,
        "comment": comment,
        "video": video,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}