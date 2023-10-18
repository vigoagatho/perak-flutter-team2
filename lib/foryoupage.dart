import 'package:flutter/material.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 280,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://cdn1-production-images-kly.akamaized.net/SDoFiYywZJXu0m9DjyG85W90rcQ=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4027992/original/033101200_1653012009-ezgif.com-gif-maker__12_.jpg'))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Opacity(
                              opacity: 0.5,
                              child:
                                  Container(height: 30, color: Colors.black)),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_circle_fill_outlined,
                                        color: Colors.white),
                                    Text(
                                      '20k',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.comment, color: Colors.white),
                                    Text(
                                      '105',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhKZKreEaYMPquk9dJ-EJ8fQmkAa5GuqaZji-9My6x50FdioGc2ir7QxoKWsUW7YIzBulDst50DoakOl9z6mClUoiIpw1HIm3NiMr8KH6BKWYG0iPb_TqTqh-aJjBdHJwQuSGAOl0yVLUSRvfj07mej7ovZZTEIFjxMKkD94rzWJ753xG6eQ-PJTHPQ1fg/s520/744de1a01a479d88fac7cddcda29067c.webp')),
                  title: Text(
                    'Teori Terbaru tentang One Piece',
                    maxLines: 2,
                  ),
                  subtitle: Text('anugrah'),
                  trailing: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 280,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://i.ytimg.com/vi/6BCyjUvurPk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCK2WB1qr0nxst1LBthVwhh_X1Svw'))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Opacity(
                              opacity: 0.5,
                              child:
                                  Container(height: 30, color: Colors.black)),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_circle_fill_outlined,
                                        color: Colors.white),
                                    Text(
                                      '18k',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.comment, color: Colors.white),
                                    Text(
                                      '75',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/550x/92/12/2d/92122d70deaddc1878b22163977a180d.jpg')),
                  title: Text(
                    'Kematian Sang Terkuat Gojo Satoru?!',
                    maxLines: 2,
                  ),
                  subtitle: Text('mranimex175'),
                  trailing: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 280,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage('https://i.imgur.com/Jg1V5Zb.jpeg'
                                ))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Opacity(
                              opacity: 0.5,
                              child:
                                  Container(height: 30, color: Colors.black)),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_circle_fill_outlined,
                                        color: Colors.white),
                                    Text(
                                      '12k',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.comment, color: Colors.white),
                                    Text(
                                      '63',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/1200x/d9/fa/77/d9fa7739318dd8a0bd735d30401d1d64.jpg')),
                  title: Text(
                    'Momen Seru My Hero Academia dari season 1',
                    maxLines: 2,
                  ),
                  subtitle: Text('Tekber'),
                  trailing: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 280,
          child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://image-cdn.hypb.st/https%3A%2F%2Fid.hypebeast.com%2Ffiles%2F2023%2F04%2Fberikut-pilihan-10-fighting-scene-terbaik-dari-naruto-2.jpeg?w=960&cbr=1&q=90&fit=max'))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Opacity(
                              opacity: 0.5,
                              child:
                                  Container(height: 30, color: Colors.black)),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_circle_fill_outlined,
                                        color: Colors.white),
                                    Text(
                                      '35k',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 60,
                                margin: EdgeInsets.fromLTRB(8, 0, 6, 2.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.comment, color: Colors.white),
                                    Text(
                                      '200',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/550x/f3/3a/85/f33a855b024b3aff13f7b7eb45c675c3.jpg')),
                  title: Text(
                    'Kumpulan Pertarungan Naruto Kecil',
                    maxLines: 2,
                  ),
                  subtitle: Text('Reza'),
                  trailing: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
