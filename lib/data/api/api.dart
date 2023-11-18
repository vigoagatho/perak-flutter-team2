import 'dart:convert';
import 'package:aninext/data/model/Recommend.dart';
import 'package:aninext/data/model/tren.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:aninext/common/url.dart';
import 'package:aninext/data/model/dataimageslider.dart';
import 'package:aninext/data/model/lanjutnonton.dart';
import 'package:http/http.dart' as http;
import '../model/history.dart';
import '../model/userdata.dart';

class ApiAnime {
  Future<List<Recommend>> listOfRecommend() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('recommendData') ?? '';
    if (cachedData.isNotEmpty) {
      List<Recommend> cachedList = recommendFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/recommend"));
    if (response.statusCode == 200) {
      return List<Recommend>.from(
          json.decode(response.body).map((x) => Recommend.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<Trend>> listOfTrend() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('trendData') ?? '';
    if (cachedData.isNotEmpty) {
      List<Trend> cachedList = trendFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/trend"));
    if (response.statusCode == 200) {
      return List<Trend>.from(
          json.decode(response.body).map((x) => Trend.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<UserData>> listOfUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('userDataData') ?? '';
    if (cachedData.isNotEmpty) {
      List<UserData> cachedList = userDataFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/userdata"));
    if (response.statusCode == 200) {
      return List<UserData>.from(
          json.decode(response.body).map((x) => UserData.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<DataImageSlider>> listOfDataImageSlider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('dataImageSliderData') ?? '';
    if (cachedData.isNotEmpty) {
      List<DataImageSlider> cachedList = dataImageSliderFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/dataimageslider"));
    if (response.statusCode == 200) {
      return List<DataImageSlider>.from(
          json.decode(response.body).map((x) => DataImageSlider.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<LanjutNonton>> listOfLanjutNonton() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('lanjutnontonData') ?? '';
    if (cachedData.isNotEmpty) {
      List<LanjutNonton> cachedList = lanjutNontonFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/lanjutnonton"));
    if (response.statusCode == 200) {
      return List<LanjutNonton>.from(
          json.decode(response.body).map((x) => LanjutNonton.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<List<History>> listOfHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cachedData = prefs.getString('historyData') ?? '';
    if (cachedData.isNotEmpty) {
      List<History> cachedList = historyFromJson(cachedData);
      return cachedList;
    }
    final response = await http.get(Uri.parse("$baseUrl/history"));
    if (response.statusCode == 200) {
      return List<History>.from(
          json.decode(response.body).map((x) => History.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
