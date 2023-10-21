import 'package:flutter/material.dart';
import '../widgets/rekomendasi.dart';
import '../widgets/sedang-tren.dart';
import '../widgets/lanjut-nonton.dart';
import '../widgets/imageslider.dart';

class HalamanListAnime extends StatelessWidget {
  const HalamanListAnime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        ImageSlider(),
        Container(
          margin: EdgeInsets.only(top: 24, left: 10),
          child: Text('Lanjutkan Menonton',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        LanjutNonton(),
        SedangTren(),
        Rekomendasi(),
        SizedBox(height: 30)
      ],
    ));
  }
}
