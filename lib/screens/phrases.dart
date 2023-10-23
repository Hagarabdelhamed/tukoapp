import 'package:flutter/material.dart';
import 'package:tukoapp/components/phraseCompo.dart';
import 'package:tukoapp/models/PageModel.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<PageModel> phrase = [
    const PageModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      japText: 'Kimasu ka',
      engText: 'Are You Coming',
    ),
    const PageModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      japText: 'Hai, watashi wa kite imasu',
      engText: 'Yes, I\'m Coming',
    ),
    const PageModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      japText: 'Wasurezu ni kōdoku shite kudasai',
      engText: 'Don\'t Forget to Subscribe',
    ),
    const PageModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      japText: 'Watashi wa anime ga daisukidesu',
      engText: 'I Love Anime',
    ),
    const PageModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      japText: 'Go kibun wa ikagadesu ka?',
      engText: 'How Are You Feeling ?',
    ),
    const PageModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      japText: 'Watashi wa puroguramingu ga daisukidesu',
      engText: 'I Love Programming',
    ),
    const PageModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      japText: 'Puroguramingu wa kantandesu',
      engText: 'Programming Is Easy',
    ),
    const PageModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      japText: 'Namae wa nandesuka ?',
      engText: 'What is Your Name ?',
    ),
    const PageModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      japText: 'Doko ni iku no ?',
      engText: 'Where Are You Going ?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: Text('Phrase'),
      ),
      body: ListView.separated(
          itemCount: phrase.length,
          separatorBuilder: (context, index) => Divider(
                thickness: 10,
              ), // i used seperated rather than builder to make divider between each row
          itemBuilder: (context, index) => PhrasesCompo(phrase: phrase[index])),
    );
  }
}
