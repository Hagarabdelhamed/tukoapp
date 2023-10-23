import 'package:flutter/material.dart';
import 'package:tukoapp/components/NumberCompo.dart';


import '../models/PageModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<PageModel> numbers = const [
    PageModel( 
      sound:'sounds/numbers/number_one_sound.mp3' ,
      image: 'assets/images/numbers/number_one.png',
      japText: 'Ichi',
      engText: 'One'),
    PageModel( 
     sound:'sounds/numbers/number_two_sound.mp3' ,
    image: 'assets/images/numbers/number_two.png',
      japText: 'Ni',
      engText: 'Two'),
    PageModel(
       sound:'sounds/numbers/number_three_sound.mp3'  ,
       image: 'assets/images/numbers/number_three.png',
      japText: 'San',
      engText: 'Three'),
    PageModel(
       sound:'sounds/numbers/number_four_sound.mp3' ,
       image: 'assets/images/numbers/number_four.png',
      japText: 'Shi',
      engText: 'Four'),
    PageModel( 
      sound:'sounds/numbers/number_five_sound.mp3'  ,
    image: 'assets/images/numbers/number_five.png',
      japText: 'Go',
      engText: 'Five'),
    PageModel( 
       sound:'sounds/numbers/number_six_sound.mp3' ,
      image: 'assets/images/numbers/number_six.png',
      japText: 'Roku',
      engText: 'Six'),
    PageModel(
       sound:'sounds/numbers/number_seven_sound.mp3' ,
       image: 'assets/images/numbers/number_seven.png',
      japText: 'Sebun',
      engText: 'Seven'),
    PageModel( 
       sound:'sounds/numbers/number_eight_sound.mp3' ,
      image: 'assets/images/numbers/number_eight.png',
      japText: 'Hachi',
      engText: 'Eight'),
    PageModel( 
       sound:'sounds/numbers/number_nine_sound.mp3' ,
      image: 'assets/images/numbers/number_nine.png',
      japText: 'Kyū',
      engText: 'Nine'),
    PageModel(
       sound:'sounds/numbers/number_ten_sound.mp3' ,
       image: 'assets/images/numbers/number_ten.png',
      japText: 'Jū',
      engText: 'Ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
      
        itemBuilder: (context, index) =>NumberCompo(number: numbers[index])
      )
    );
  }
}

