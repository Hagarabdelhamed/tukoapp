import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/PageModel.dart';

class ColorsCompo extends StatelessWidget {
  const ColorsCompo({super.key, required this.color});
  final PageModel color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xff7C3FA1),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4D9), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.only(left: 9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color.japText,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  color.engText,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
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

                  player.play(AssetSource(color.sound));
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
