import 'package:flutter/material.dart';
import '../data/api/api.dart';
import '../widgets/user-widget.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  final baseUrl = ApiAnime();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserWidget(apiAnime: baseUrl),
    );
  }
}
