import 'dart:convert';

import 'package:aninext/data/model/tren.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/api/api.dart';

class SedangTren extends StatelessWidget {
  final ApiAnime apiAnime;
  const SedangTren({Key? key, required this.apiAnime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    final halfScreen = lebarLayar / 2;
    final tinggiDikit = ((lebarLayar / 3) * 4) / 5;
    return FutureBuilder<List<Trend>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            final animeList = snapshot.data!;
            return Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 24, left: 10, bottom: 10),
                    child: Text("Rekomendasi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 130),
                  itemCount: animeList.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                child: Container(
                                  height: tinggiDikit,
                                  width: halfScreen,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              animeList[index].image),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Text(
                                animeList[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]));
                  },
                ),
              ],
            );
          }
        });
  }

  Future<List<Trend>> fetchData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? cachedData = prefs.getString('trendData');

    if (cachedData != null && cachedData.isNotEmpty) {
      List<Trend> cachedList = trendFromJson(cachedData);
      return cachedList;
    }

    final response = await apiAnime.listOfTrend();

    if (response.isNotEmpty) {
      prefs.setString('trendData', jsonEncode(response));
      return response;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
