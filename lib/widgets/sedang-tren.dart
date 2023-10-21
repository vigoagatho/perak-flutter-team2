import 'package:flutter/material.dart';
import '../data/anime-list.dart';

class SedangTren extends StatelessWidget {
  const SedangTren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lebarLayar = MediaQuery.of(context).size.width;
    final halfScreen = lebarLayar / 2;
    final tinggiDikit = ((lebarLayar/3) * 4)/5;

    AnimeList animeList = AnimeList();
    var gambar = animeList.gambartren;
    var judul = animeList.judultren;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(top: 24, left: 10, bottom: 10),
            child: Text("Sedang Tren",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 130),
          itemCount: judul.length,
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
                                  image: NetworkImage(gambar[index]),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text(
                        judul[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]));
          },
        ),
      ],
    );
  }
}
