
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/PageModel.dart';

class ItemComp extends StatelessWidget {
  const ItemComp({required this.item});
  final PageModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.japText,
                style: const TextStyle(color: Colors.white, fontSize: 23),
              ),
              Text(
                item.engText,
                style: const TextStyle(color: Colors.white, fontSize: 20),
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

                player.play(AssetSource(item.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            )),
      ],
    );
  }
}
