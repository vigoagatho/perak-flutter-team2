import 'package:aninext/data/api/api.dart';
import 'package:aninext/data/model/anime-list.dart';
import 'package:flutter/material.dart';

class Rekomendasi extends StatelessWidget {
  final ApiAnime apiAnimeList;
  const Rekomendasi({Key? key, required this.apiAnimeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    final halfScreen = lebarLayar / 2;
    final tinggiDikit = ((lebarLayar / 3) * 4) / 5;

    // AnimeList animeList = AnimeList();
    // var gambar = animeList.gambarrekomen;
    // var judul = animeList.judulrekomen;
    return FutureBuilder<List<AnimeList>>(
        future: apiAnimeList.listOfAnimeList(isTrend: 0),
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
}
