import 'package:aninext/data/api/api.dart';
import 'package:aninext/data/model/lanjutnonton.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class WatchProgress extends StatelessWidget {
  final ApiAnime apiAnime;
  const WatchProgress({Key? key, required this.apiAnime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AnimeList animeList = AnimeList();
    // var gambar = animeList.gambarlanjut;
    // var judul = animeList.judullanjut;
    // var episode = animeList.episode;
    // var persen = animeList.persen;
    return FutureBuilder<List<LanjutNonton>>(
        future: apiAnime.listOfLanjutNonton(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          } else {
            final lanjutNonton = snapshot.data!;
            return Container(
                height: 180,
                child: ListView.builder(
                  itemCount: lanjutNonton.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      margin: EdgeInsets.only(top: 12, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 140,
                              height: 81.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image:
                                      NetworkImage(lanjutNonton[index].image),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            lanjutNonton[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Terakhir ditonton: EPS ${lanjutNonton[index].eps}',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            lanjutNonton[index].progress,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    );
                  },
                ));
          }
        });
  }
}
