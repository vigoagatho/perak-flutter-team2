import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const HistoryCard({Key? key, required this.imageUrl, required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(bottom: 12, left: 15),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // Aksi saat gambar diklik
              },
              child: Container(
                width: 140,
                height: 81.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
    );
  }
}
