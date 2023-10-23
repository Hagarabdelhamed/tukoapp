import 'package:flutter/material.dart';
import 'package:tukoapp/components/colorsCompo.dart';

import '../models/PageModel.dart';
import '../models/PageModel.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  List<PageModel> color = const [
    PageModel(
        image: 'assets/images/colors/color_white.png',
        engText: 'White',
        japText: 'Shiro',
        sound: 'sounds/colors/white.wav'),
    PageModel(
        image: 'assets/images/colors/color_black.png',
        engText: 'Black',
        japText: 'Kuro',
        sound: 'sounds/colors/black.wav'),
    PageModel(
        image: 'assets/images/colors/color_gray.png',
        engText: 'Grey',
        japText: 'Haiiro',
        sound: 'sounds/colors/gray.wav'),
    PageModel(
        image: 'assets/images/colors/color_brown.png',
        engText: 'Brown',
        japText: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    PageModel(
        image: 'assets/images/colors/color_green.png',
        engText: 'Green',
        japText: 'Midori',
        sound: 'sounds/colors/green.wav'),
    PageModel(
        image: 'assets/images/colors/color_red.png',
        engText: 'Red',
        japText: 'Aka',
        sound: 'sounds/colors/red.wav'),
    PageModel(
        image: 'assets/images/colors/yellow.png',
        engText: 'Yellow',
        japText: 'Kiiro',
        sound: 'sounds/colors/yellow.wav'),
    PageModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        engText: 'Dusty Yellow',
        japText: 'Hokorippoi Kiiro',
        sound: 'sounds/colors/dusty_yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff49332A),
      ),
      body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) => ColorsCompo(color: color[index])),
    );
  }
}
