import 'package:flutter/material.dart';
import '../data/anime-list.dart';

class Rekomendasi extends StatelessWidget {
  const Rekomendasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnimeList animeList = AnimeList();
    var gambar = animeList.gambarrekomen;
    var judul = animeList.judulrekomen;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(top: 24, left: 10, bottom: 10),
            child: Text("Rekomendasi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 130),
          itemCount: judul.length,
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
                          height: 92.63,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(gambar[index]),
                                  fit: BoxFit.fill)),
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
