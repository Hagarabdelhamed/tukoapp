import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/PageModel.dart';
import 'itemCompo.dart';

class NumberCompo extends StatelessWidget {
  const NumberCompo({required this.number});
  final PageModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF99531),
      height: 90,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4D9),
            child: Image.asset(number.image!),
          ),
          Expanded(child: ItemComp(item: number)),
        ],
      ),
    );
  }
}
