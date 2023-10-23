import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/PageModel.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({required this.number});
  final PageModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF99531),
      height: 90,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4D9), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.japText,
                  style: const TextStyle(color: Colors.white, fontSize: 23),
                ),
                Text(
                  number.engText,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 40),
              child: IconButton(
                onPressed: () async {
                  
                  final player = AudioPlayer();

                  player.play(AssetSource(number.sound));
                },
              
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              )),
        ],
      ),
    );
  }
}
