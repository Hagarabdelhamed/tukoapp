import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


import '../models/PageModel.dart';



class FamilyCompo extends StatelessWidget {
  const FamilyCompo({super.key, required this.member});
  final PageModel member; 


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: const Color(0xff528032),
        child: Row(
          children: [
            Container(
                color: const Color(0xffFFF4D9),
                child: Image.asset(member.image)),
             Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(member.japText,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                  Text(member.engText,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.only(right : 40),
              child: IconButton(
                  onPressed: () async {
                  
                  final player = AudioPlayer();

                  player.play(AssetSource(member.sound));
                },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  )),
            )
          ],
        ),
      );
  }
}