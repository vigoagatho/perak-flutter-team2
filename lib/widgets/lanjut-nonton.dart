import 'package:flutter/material.dart';
import '../data/anime-list.dart';
import 'dart:ui';

class LanjutNonton extends StatelessWidget {
  const LanjutNonton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnimeList animeList = AnimeList();
    var gambar = animeList.gambarlanjut;
    var judul = animeList.judullanjut;
    var episode = animeList.episode;
    var persen = animeList.persen;
    return Container(
        height: 180,
        child: ListView.builder(
          itemCount: judul.length,
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
                          image: NetworkImage(gambar[index]),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    judul[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Terakhir ditonton: EPS ${episode[index]}',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    persen[index],
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
