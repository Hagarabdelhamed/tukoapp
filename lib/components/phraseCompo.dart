import 'package:flutter/material.dart';
import 'package:tukoapp/models/PageModel.dart';

import 'itemCompo.dart';

class PhrasesCompo extends StatelessWidget {
  const PhrasesCompo({super.key, required this.phrase});
  final PageModel phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff47A5CB),
      height: 140,
      child: Row(
        children: [
          Expanded(child: ItemComp(item: phrase)),
          
        ],
      ),
      
    );
  }
}