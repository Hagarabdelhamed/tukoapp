import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/PageModel.dart';
import 'itemCompo.dart';

class ColorsCompo extends StatelessWidget {
  const ColorsCompo({super.key, required this.color});
  final PageModel color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff7C3FA1),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4D9), child: Image.asset(color.image!)),
                  Expanded(child: ItemComp(item: color)),

        ],
      ),
    );
  }
}
