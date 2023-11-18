import 'dart:convert';

import 'package:aninext/common/url.dart';
import 'package:aninext/data/model/dataimageslider.dart';
import 'package:aninext/data/model/lanjutnonton.dart';
import 'package:http/http.dart' as http;
import '../model/anime-list.dart';
import '../model/userdata.dart';

class ApiAnime {
  Future<List<AnimeList>> listOfAnimeList({int? isTrend}) async {
    final response = await http.get(Uri.parse("$baseUrl/animelist"));
    if (response.statusCode == 200) {
      // return List<AnimeList>.from(
      //     json.decode(response.body).map((x) => AnimeList.fromJson(x)));
      final List<AnimeList> allAnimeList = List<AnimeList>.from(
          json.decode(response.body).map((x) => AnimeList.fromJson(x)));
      if (isTrend != null) {
        // Filter the list based on the isTrend value
        return allAnimeList.where((anime) => anime.trend == isTrend).toList();
      } else {
        return allAnimeList;
      }
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<UserData>> listOfUserData() async {
    final response = await http.get(Uri.parse("$baseUrl/userdata"));
    if (response.statusCode == 200) {
      return List<UserData>.from(
          json.decode(response.body).map((x) => UserData.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<DataImageSlider>> listOfDataImageSlider() async {
    final response = await http.get(Uri.parse("$baseUrl/dataimageslider"));
    if (response.statusCode == 200) {
      return List<DataImageSlider>.from(
          json.decode(response.body).map((x) => DataImageSlider.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<LanjutNonton>> listOfLanjutNonton() async {
    final response = await http.get(Uri.parse("$baseUrl/lanjutnonton"));
    if (response.statusCode == 200) {
      return List<LanjutNonton>.from(
          json.decode(response.body).map((x) => LanjutNonton.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
