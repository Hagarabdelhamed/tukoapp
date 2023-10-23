import 'package:flutter/material.dart';
import 'package:tukoapp/models/PageModel.dart';

class PhrasesPage extends StatelessWidget {
   PhrasesPage({super.key});
   List<PageModel> phrase =[
    PageModel(sound: sound, japText: japText, engText: engText)
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: Text('Phrase'),
      ),
    );
  }
}