import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> gambar = [
      'https://asset-2.tstatic.net/kaltim/foto/bank/images/haikyuu-to-the-top.jpg',
      'https://media.hitekno.com/thumbs/2022/07/29/19456-bleach/730x480-img-19456-bleach.jpg',
      'https://media.sukabumiupdate.com/media/2023/04/06/1680772425_642e8d490becb_YeQQqt5wjGNDyJWKHiIU.webp',
      'https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2021/08/Blue-Lock-TV-Anime.jpg'
    ];
    final List<String> judul = [
      'Haikyuu',
      'Bleach',
      'Kimetsu No Yaiba',
      'Blue Lock'
    ];
    final List<String> gambar2 = [
      'https://www.animationxpress.com/wp-content/uploads/2022/08/one-punch-man.jpg',
      'https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2021/08/Blue-Lock-TV-Anime.jpg',
      'https://www.thestreambible.com/wp-content/uploads/2022/09/dragon-ball-Z-768x395.jpg',
      'https://animecollective.com/wp-content/uploads/2020/09/hunter-x-hunter-arcs-ranked-1536x1024.jpg.webp'
    ];
    final List<String> judul2 = [
      'One Punch Man',
      'Blue Lock',
      'Dragon Ball Z',
      'Hunter x Hunter'
    ];
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 190,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://dorangadget.com/wp-content/uploads/2023/05/Karakter-One-Piece-63.jpg'))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Opacity(
                              opacity: 0.5,
                              child: Container(
                                height: 30,
                                color: Colors.black,
                              )),
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, bottom: 5),
                              child: Text('One Piece Eps 1075',
                                  style: TextStyle(color: Colors.white)),
                            )),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 15),
                              child:
                                  Icon(Icons.more_horiz, color: Colors.white),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 24, left: 10),
                child: Text('Lanjutkan Menonton',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
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
                                      image: NetworkImage(
                                          'https://cdn.antaranews.com/cache/1200x800/2022/08/22/jjk.jpg'),
                                      fit: BoxFit.fitWidth)),
                            ),
                          ),
                          Text(
                            'Jujutsu Kaisen',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Terakhir ditonton:EPS 7',
                            style: TextStyle(fontSize: 9),
                          ),
                          Text(
                            '30%',
                            style: TextStyle(fontSize: 9),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                                      image: NetworkImage(
                                          'https://www.viu.com/ott/id/articles/wp-content/uploads/2021/12/anime-attack-on-titan-final-season-part-2-key-visual-viu.jpg'),
                                      fit: BoxFit.fitWidth)),
                            ),
                          ),
                          Text(
                            'Attack on Titan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Terakhir ditonton:EPS 23',
                            style: TextStyle(fontSize: 9),
                          ),
                          Text(
                            '70%',
                            style: TextStyle(fontSize: 9),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24, left: 10, bottom: 10,),
                child: Text("Sedang Tren",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                            Container(
                              height: 92.63,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(gambar[index]),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              judul[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ]));
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 24, left: 10, bottom: 10),
                child: Text("Rekomendasi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
                            Container(
                              height: 92.63,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(gambar2[index]),
                                      fit: BoxFit.fill)),
                            ),
                            Text(
                              judul2[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ]));
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
