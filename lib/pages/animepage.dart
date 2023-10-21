import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> gambar = [
      'https://asset-2.tstatic.net/kaltim/foto/bank/images/haikyuu-to-the-top.jpg',
      'https://media.hitekno.com/thumbs/2022/07/29/19456-bleach/730x480-img-19456-bleach.jpg',
      'https://wallpapers.com/images/hd/kimetsu-no-yaiba-pictures-ekypmhesa3ghjw9r.jpg',
      'https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2021/08/Blue-Lock-TV-Anime.jpg'
    ];
    final List<String> judul = [
      'Haikyuu',
      'Bleach',
      'Kimetsu No Yaiba',
      'Blue Lock'
    ];
    final List<String> gambar2 = [
      'https://images6.fanpop.com/image/photos/40600000/OPM-Wallpaper-one-punch-man-40613919-1680-1050.jpg',
      'https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2021/08/Blue-Lock-TV-Anime.jpg',
      'https://www.thestreambible.com/wp-content/uploads/2022/09/dragon-ball-Z-768x395.jpg',
      'https://media.hitekno.com/thumbs/2022/10/14/78201-hunter-x-hunter/730x480-img-78201-hunter-x-hunter.jpg'
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
                                'https://m.media-amazon.com/images/I/71jt8+W2XHL.jpg'))),
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
                                          'https://www.xtrafondos.com/wallpapers/personajes-de-jujutsu-kaisen-7994.jpg'),
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
